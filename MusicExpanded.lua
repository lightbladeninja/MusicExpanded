MusicExpanded = MusicExpanded or {}
local m = MusicExpanded

-- Global variables
m.customArea = nil
m.musicToken = 0
m.silenceTicker = nil

m.introCooldowns = m.introCooldowns or {}
m.isIntroPlaying = false
m.introToken = 0

m.eventCooldowns = m.eventCooldowns or {}
m.isEventPlaying = false
m.eventToken = 0

-- Debugprint
local function DebugPrint(msg)
    if m.announceMode == 3 then
        print("|cFF00FF00[MusicExpanded]|r " .. msg)
    end
end

-- SavedVariables initialization
MusicExpandedDB = MusicExpandedDB or {}

local function SyncLoopFromGame()
    local value = C_CVar.GetCVarBool("SoundZoneMusicNoDelay")
    DebugPrint("SyncLoopFromGame: SoundZoneMusicNoDelay = " .. tostring(value))

    m.loopMusic = value and 1 or 0
    MusicExpandedDB.loopMusic = m.loopMusic
    DebugPrint("Loop Music synced: " .. tostring(m.loopMusic))
end

local loader = CreateFrame("Frame")
loader:RegisterEvent("ADDON_LOADED")
loader:SetScript("OnEvent", function(self, event, addonName)
    if addonName ~= "MusicExpanded" then
        return
    end

    MusicExpandedDB.announceMode = MusicExpandedDB.announceMode or 1
    m.announceMode = MusicExpandedDB.announceMode

    SyncLoopFromGame()

    self:UnregisterEvent("ADDON_LOADED")
end)

-- ensure .mp3 extension is present
local function NormalizeTrackName(trackName)
    if not trackName or trackName == "" then
        return nil
    end
    if not string.find(trackName, "%.mp3$") then
        trackName = trackName .. ".mp3"
    end
    return trackName
end

-- go from track name to file path, checking both client and addon files
local function GetMusicPath(trackName)

    trackName = NormalizeTrackName(trackName)
    if not trackName then
        return nil
    end

    local clientPath = MusicExpanded_Registry.ClientFiles[trackName]
    if clientPath then
        return clientPath
    end

    local addonPath = MusicExpanded_Registry.AddonFiles[trackName]
    if addonPath then
        return MusicExpanded_Registry.AddonRoot .. addonPath
    end

    return nil
end

-- play a custom track by name, checking both client and addon files
local function PlayCustomTrack(trackName)
    local filePath = GetMusicPath(trackName)
    if not filePath then
        DebugPrint("Track not found: " .. tostring(trackName))
        return false
    end

    PlayMusic(filePath)
    m.currentTrack = trackName

    if m.announceMode == 1 then
        print("|cFFFFBF00[MusicExpanded]|r Playing: " .. trackName)
    elseif m.announceMode >= 2 then
        print("|cFFFFBF00[MusicExpanded]|r Playing: " .. filePath)
    end
    return true
end

-- Check for custom music
local function HasTracks(data)
    return data and data.tracks and #data.tracks > 0
end

local function GetZoneMusicData(zone, subzone, indoors)
    local zoneEntry = MusicExpanded_Data.Zones[zone]
    if not zoneEntry then
        m.customArea = false
        return nil
    end

    local subEntry = subzone and zoneEntry.subzones and zoneEntry.subzones[subzone]

    -- Subzone is explicitly listed
    if subEntry then
        if indoors and subEntry.indoors then
            if HasTracks(subEntry.indoors) then
                m.customArea = true
                return subEntry.indoors
            else
                m.customArea = false
                return nil
            end
        end

        if HasTracks(subEntry) then
            m.customArea = true
            return subEntry
        else
            m.customArea = false
            return nil
        end
    end

    -- Subzone not listed → inherit zone
    if HasTracks(zoneEntry) then
        m.customArea = true
        return zoneEntry
    end

    m.customArea = false
    return nil
end

-- Smart music queueing
m.recentTracks = m.recentTracks or {}

local function RememberTrack(file)
    table.insert(m.recentTracks, 1, file)
    while #m.recentTracks > 3 do
        table.remove(m.recentTracks)
    end
end

local function WasRecentlyPlayed(file)
    for i = 1, #m.recentTracks do
        if m.recentTracks[i] == file then
            return true
        end
    end
    return false
end

local function ChooseRandomTrack(tracks)
    if not tracks or #tracks == 0 then
        return nil
    end

    if #tracks == 1 then
        RememberTrack(tracks[1].file)
        return tracks[1]
    end

    local avoidCount = math.min(3, #tracks - 2)
    if avoidCount < 1 then
        avoidCount = 1
    end

    local eligible = {}
    for i = 1, #tracks do
        local file = tracks[i].file
        local blocked = false
        for j = 1, math.min(avoidCount, #m.recentTracks) do
            if m.recentTracks[j] == file then
                blocked = true
                break
            end
        end
        if not blocked then
            table.insert(eligible, tracks[i])
        end
    end

    if #eligible == 0 then
        eligible = tracks
    end

    local chosen = eligible[math.random(#eligible)]
    RememberTrack(chosen.file)
    return chosen
end

-- Timer
local function CancelMusicTimer()
    m.musicToken = m.musicToken + 1
    if m.silenceTicker then
        m.silenceTicker:Cancel()
        m.silenceTicker = nil
    end
end

local function PlaySilence()
    local path = GetMusicPath("silence.mp3")
    if path then
        PlayMusic(path)
    end
end

local HandleZoneMusic -- forward declaration for recursive call

local function ScheduleAfterTrack(duration)
    CancelMusicTimer()
    local token = m.musicToken

    C_Timer.After(duration, function()
        if token ~= m.musicToken then
            return
        end

        DebugPrint("Timer fired. token=" .. token .. " current=" .. m.musicToken)

        if m.loopMusic == 1 then
            DebugPrint("Loop on: restarting music immediately.")
            HandleZoneMusic(true)
            return
        end

        -- Loop off: 3–8 minutes of silence so vanilla music cannot start
        PlaySilence()
        m.silenceTicker = C_Timer.NewTicker(3.5, function()
            if token ~= m.musicToken then
                return
            end
            PlaySilence()
        end)

        local wait = math.random(180, 480)
        DebugPrint("Loop off: silence for " .. wait .. " seconds.")

        C_Timer.After(wait, function()
        if token ~= m.musicToken then
            return
        end
        if m.silenceTicker then
            m.silenceTicker:Cancel()
            m.silenceTicker = nil
        end

        DebugPrint("Silence gap ended after " .. wait .. " seconds.")
        HandleZoneMusic(true)
        end)
    end)
end

-- zone/music main handler
local function TrackInList(tracks, file)
    if not tracks or not file then
        return false
    end
    for i = 1, #tracks do
        if tracks[i].file == file then
            return true
        end
    end
    return false
end

HandleZoneMusic = function(force)

    if (m.isIntroPlaying or m.isEventPlaying) and not force then
        return true
    end

    m.currentZone = GetZoneText() or ""
    m.currentSubzone = GetSubZoneText() or ""
    m.isIndoors = IsIndoors() and true or false

    local musicData = GetZoneMusicData(m.currentZone, m.currentSubzone, m.isIndoors)
    if not musicData then
        m.currentTrack = nil
        CancelMusicTimer()
        DebugPrint("No custom music for this area.")
        return false
    end

    if not force and TrackInList(musicData.tracks, m.currentTrack) then
        DebugPrint("Keeping current track: " .. tostring(m.currentTrack))
        return true
    end

    local chosen = ChooseRandomTrack(musicData.tracks)
    PlayCustomTrack(chosen.file)
    ScheduleAfterTrack(chosen.duration)
    return true
end

-- Intro Music
local function HasIntro(data)
    return data and data.intro and #data.intro > 0
end

local function IsIntroOnCooldown(key)
    local untilTime = m.introCooldowns[key]
    return untilTime and GetTime() < untilTime
end

local function StartIntroCooldown(key, seconds)
    m.introCooldowns[key] = GetTime() + (seconds or 600)
end

local function GetIntroToPlay(zone, subzone, indoors)
    local zoneEntry = MusicExpanded_Data.Zones[zone]
    if not zoneEntry then
        return nil
    end

    local subEntry = subzone and zoneEntry.subzones and zoneEntry.subzones[subzone]

    if indoors and subEntry and subEntry.indoors and HasIntro(subEntry.indoors) then
        local key = zone .. "|" .. subzone .. "|indoors"
        if not IsIntroOnCooldown(key) then
            return subEntry.indoors.intro, key
        end
    end

    if subEntry and HasIntro(subEntry) then
        local key = zone .. "|" .. subzone
        if not IsIntroOnCooldown(key) then
            return subEntry.intro, key
        end
    end

    if HasIntro(zoneEntry) then
        local key = zone
        if not IsIntroOnCooldown(key) then
            return zoneEntry.intro, key
        end
    end

    return nil
end

local function FinishIntro(token)
    if m.introToken ~= token then
        return
    end
    m.isIntroPlaying = false

    if not HandleZoneMusic(true) then
        StopMusic()
        DebugPrint("Intro ended, no zone tracks → StopMusic")
    end
end

local function PlayIntro(introList, cooldownKey)
    local chosen = introList[math.random(#introList)]
    if not chosen or not chosen.file then
        return false
    end

    CancelMusicTimer()
    PlayCustomTrack(chosen.file)

    m.isIntroPlaying = true
    m.introToken = m.introToken + 1
    local token = m.introToken

    StartIntroCooldown(cooldownKey, chosen.cooldown or 600)
    C_Timer.After(chosen.duration - 3, function()
        FinishIntro(token)
    end)

    DebugPrint("Intro: " .. chosen.file .. " (" .. cooldownKey .. ")")
    return true
end

local function CheckForIntroMusic()
    local introList, key = GetIntroToPlay(
        GetZoneText() or "",
        GetSubZoneText() or "",
        IsIndoors() and true or false
    )
    if not introList then
        return false
    end
    m.customArea = true
    return PlayIntro(introList, key)
end

-- Event Music
local dialogueEvent = CreateFrame("Frame")
m.watchingDialogue = false

local function GetEventData()
    local subzone = GetSubZoneText() or ""
    local zone = GetZoneText() or ""
    return MusicExpanded_Events[subzone] or MusicExpanded_Events[zone]
end

local function UpdateDialogueWatch()
    if GetEventData() then
        if not m.watchingDialogue then
            dialogueEvent:RegisterEvent("CHAT_MSG_MONSTER_YELL")
            dialogueEvent:RegisterEvent("CHAT_MSG_MONSTER_SAY")

            m.watchingDialogue = true
            DebugPrint("Dialogue watch ON")
        end
    else
        if m.watchingDialogue then
            dialogueEvent:UnregisterEvent("CHAT_MSG_MONSTER_YELL")
            dialogueEvent:UnregisterEvent("CHAT_MSG_MONSTER_SAY")

            m.watchingDialogue = false
            DebugPrint("Dialogue watch OFF")
        end
    end
end

local function FinishEvent(token)
    DebugPrint("FinishEvent token=" .. token .. " current=" .. m.eventToken)
    if m.eventToken ~= token then
        return
    end
    m.isEventPlaying = false
    if not HandleZoneMusic(true) then
        StopMusic()
        DebugPrint("Event ended, no zone tracks → StopMusic")
    end
end

local function PlayEvent(tracks, cooldownKey)
    if not tracks or #tracks == 0 then
        return false
    end

    local isSequence = false
    for i = 1, #tracks do
        if tracks[i].delay and tracks[i].delay > 0 then
            isSequence = true
            break
        end
    end

    CancelMusicTimer()
    m.isIntroPlaying = false
    m.introToken = m.introToken + 1

    m.isEventPlaying = true
    m.eventToken = m.eventToken + 1
    local token = m.eventToken

    m.eventCooldowns[cooldownKey] = GetTime() + 900

    local function PlayOne(entry, isLast)
        if m.eventToken ~= token then
            return
        end

        PlayCustomTrack(entry.file)
        DebugPrint("Event: " .. entry.file)

        local duration = (entry.duration or 10) - 3

        if isLast then
            C_Timer.After(duration, function()
                FinishEvent(token)
            end)
        else
            C_Timer.After(duration, function()
                if m.eventToken ~= token then
                    return
                end
                StopMusic()
                DebugPrint("Event gap: stopped " .. entry.file)
            end)
        end
    end

    if not isSequence then
        PlayOne(tracks[math.random(#tracks)], true)
        return true
    end

    -- Sequence: same token until the last file ends (blocks intro / zone music)
    for i = 1, #tracks do
        local entry = tracks[i]
        local delay = entry.delay or 0
        local last = (i == #tracks)

        if delay > 0 then
            DebugPrint("Event queued in " .. delay .. "s: " .. entry.file)
            C_Timer.After(delay, function()
                PlayOne(entry, last)
            end)
        else
            PlayOne(entry, last)
        end
    end

    return true
end

local function FindEventTracks(data, message)
    if not data or not message or message == "" then
        return nil
    end

    local lower = string.lower(message)

    for key, tracks in pairs(data) do
        if string.find(lower, string.lower(key), 1, true) then
            return tracks, key
        end
    end

    return nil
end

local function CheckForEventMusic(message)
    local data = GetEventData()
    if not data then
        return false
    end

    local tracks, yellKey = FindEventTracks(data, message)
    if not tracks then
        return false
    end

    local cooldownKey = (GetSubZoneText() or GetZoneText() or "") .. "|" .. tostring(tracks)
    DebugPrint("Event found: " .. tostring(yellKey) .. " (" .. cooldownKey .. ")")
    local untilTime = m.eventCooldowns[cooldownKey]
    if untilTime and GetTime() < untilTime then
        DebugPrint("Event on cooldown: " .. cooldownKey)
        return false
    end

    return PlayEvent(tracks, cooldownKey)
end

-- Zonechange handling
local function OnLocationChanged()
    local zone = GetZoneText() or ""
    local subzone = GetSubZoneText() or ""
    local indoors = IsIndoors() and true or false

    if zone == m.currentZone 
    and subzone == m.currentSubzone
    and indoors == m.isIndoors then
        return -- If minimap zoom changes and its not an Indoors change.
    end

    UpdateDialogueWatch()

    if m.isEventPlaying then
        m.currentZone = zone
        m.currentSubzone = subzone
        m.isIndoors = indoors
        return
    end

    if CheckForIntroMusic() then
        m.currentZone = zone
        m.currentSubzone = subzone
        m.isIndoors = indoors
        return
    end

    if m.isIntroPlaying then
        m.currentZone = zone
        m.currentSubzone = subzone
        m.isIndoors = indoors
        return
    end

    local wasCustom = m.customArea
    local playing = HandleZoneMusic()

    if wasCustom and not playing then
        CancelMusicTimer()
        StopMusic()
    end
end

-- Dialogue event

dialogueEvent:SetScript("OnEvent", function(self, event, message, sender)
    message = message or arg1
    sender = sender or arg2
    DebugPrint(event .. " | " .. tostring(sender) .. ": " .. tostring(message))
    CheckForEventMusic(message)
end)

-- Event frame for zone and minimap changes
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("MINIMAP_UPDATE_ZOOM")
eventFrame:RegisterEvent("ZONE_CHANGED")
eventFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
eventFrame:RegisterEvent("ZONE_CHANGED_INDOORS")

eventFrame:SetScript("OnEvent", function(self, event)
    if event == "ZONE_CHANGED_INDOORS" then
        DebugPrint("Zone changed indoors.")
    end

    if event == "ZONE_CHANGED_NEW_AREA" then
        DebugPrint("Zone changed new area.")
    end

    if event == "ZONE_CHANGED" then
        DebugPrint("Subzone changed.")
    end

    if event == "MINIMAP_UPDATE_ZOOM" then
        DebugPrint("Minimap zoom changed.")

        if IsIndoors() then
            DebugPrint("Player is indoors.")
        else
            DebugPrint("Player is outdoors.")
        end
    end
    OnLocationChanged()
end)

-- Settings Menu hook
local settingsMenu = CreateFrame("Frame")
settingsMenu:RegisterEvent("CVAR_UPDATE")

settingsMenu:SetScript("OnEvent", function(self, event, cvar)
    
    if cvar == "ENABLE_MUSIC_LOOPING" then
        SyncLoopFromGame()
        HandleZoneMusic(true)
    end
end)

-- slash commands
SLASH_MUSICEXPANDED1 = "/musicexp"
SLASH_MUSICEXPANDED2 = "/mex"

function SlashCmdList.MUSICEXPANDED(msg)
    msg = msg or ""

    local args = {}
    for word in string.gmatch(msg, "%S+") do
        table.insert(args, string.lower(word))
    end

    local command = args[1]
    local arg1 = args[2]
    local arg2 = args[3]

    if command == "play" then
        if not arg1 then
            print("|cFFFFBF00[MusicExpanded]|r Usage: /mex play <trackname>")
            print("|cFFFFBF00[MusicExpanded]|r: <trackname> is any music track used in the addon. Example: /mex play forsakenflame_b")
            print("|cFFFFBF00[MusicExpanded]|r: random will choose a random track used by the addon.")
            return
        end

        PlayCustomTrack(arg1)
        return
    end

    if command == "reroll" then
        if HandleZoneMusic(true) then
    
        else
            print("|cFFFF0000[MusicExpanded]|r No music to play.")
        end
        return
    end

    if command == "stop" then
        CancelMusicTimer()
        m.isIntroPlaying = false
        m.introToken = m.introToken + 1
        m.isEventPlaying = false
        m.eventToken = m.eventToken + 1
        StopMusic()
        print("|cFFFFBF00[MusicExpanded]|r Addon music stopped, default music playing...")
        return
    end

    if command == "status" then
        print("|cFFFFBF00[MusicExpanded]|r Zone: " .. tostring(m.currentZone) .. " | Subzone: " .. tostring(m.currentSubzone) .. " | Indoors: " .. tostring(m.isIndoors))
        print("|cFFFFBF00[MusicExpanded]|r Intro or Zonemusic active: " .. tostring(m.customArea))
        print("|cFFFFBF00[MusicExpanded]|r Eventmusic active : " .. tostring(m.watchingDialogue))
        return
    end

    if command == "announce" then
        if not arg1 then
            print("|cFFFFBF00[MusicExpanded]|r Usage: /mex announce 0 | 1 | 2 | 3")
            print("0 = no chat message when a music track is played | 1 = track name is announced in chat | 2 = full file path is announced in chat | 3 = full debug information.")
            print("|cFFFFBF00[MusicExpanded]|r Current announce mode: " .. tostring(m.announceMode))
            return
        end

        if arg1 == "0" or arg1 == "1" or arg1 == "2" or arg1 == "3" then
            m.announceMode = tonumber(arg1)
            if m.announceMode == 0 then
                print("|cFFFFBF00[MusicExpanded]|r Announce mode set to 0: no chat message when a music track is played.")

            elseif m.announceMode == 1 then
                print("|cFFFFBF00[MusicExpanded]|r Announce mode set to 1: track name is announced in chat.")

            elseif m.announceMode == 2 then
                print("|cFFFFBF00[MusicExpanded]|r Announce mode set to 2: full file path is announced in chat.")

            elseif m.announceMode == 3 then
                print("|cFFFFBF00[MusicExpanded]|r Announce mode set to 3: full debug information is announced in chat.")
            end
            MusicExpandedDB.announceMode = m.announceMode
        else
            print("|cFFFF0000[MusicExpanded]|r Invalid announce mode. Please use 0, 1, 2, or 3.")
        end
        return
    end

    print("|cFFFFBF00[MusicExpanded]|r Commands: /mex announce | reroll | play | stop | status")
end