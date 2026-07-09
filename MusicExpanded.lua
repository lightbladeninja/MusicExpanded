MusicExpanded = MusicExpanded or {}
local m = MusicExpanded

local silenceFile = "Interface\\AddOns\\MusicExpanded\\music\\silence.mp3"
local MUSIC_ROOT = "Interface\\AddOns\\MusicExpanded\\music\\"

MusicExpandedDB = MusicExpandedDB or {}
MusicExpandedDB.loopMusic = MusicExpandedDB.loopMusic or 1
m.loopMusic = MusicExpandedDB.loopMusic

m.nextTrackTime = GetTime() + 1 -- Hardcode delay on startup to improve consistency of PlayMusic
m.introTrackEndTime = nil
m.eventTrackEndTime = nil
m.previousTrack = nil

-- Print doesn't exist in 1.12, so we add a print function through the addon
if not print then
    print = function(msg)
        DEFAULT_CHAT_FRAME:AddMessage(msg)
    end
end

-- Find the full path for a music file based on the registry
local function GetMusicPath(trackName)

    local subPath = MusicExpanded_Registry.Files[trackName]

    if not subPath then
        return nil
    end

    return MUSIC_ROOT .. subPath
end

-- PlayMusic function
local function PlayCustomTrack(trackName)
    if not trackName or trackName == "" then
        print("|cFFFF0000[MusicExpanded]|r No track name provided.")
        return false
    end

    -- Add .mp3 if the user didn't type it
    if not strfind(trackName, "%.mp3$") then
        trackName = trackName .. ".mp3"
    end

    -- Get the full path from the registry
    local filePath = GetMusicPath(trackName)
    if not filePath then
        return false
    end

    PlayMusic(filePath)
    print("|cFF00FF00[MusicExpanded]|r Playing: " .. trackName)

    return true
end

-- Compare music content between zones
local function CompareZoneData(filename, musicData)
    if not musicData or not musicData.tracks then
        return false
    end

    for i = 1, table.getn(musicData.tracks) do
        if musicData.tracks[i].file == filename then
            return true
        end
    end
    return false
end

-- Choose a random track from the provided music data
local function ChooseRandomTrack(musicData)
    
    local tracks = musicData.tracks
    local trackCount = table.getn(tracks)

    if trackCount == 1 then     -- If only one track, just play it
        local chosenTrack = tracks[1]
        return chosenTrack
    end

    local chosenTrack = nil
    local attempts = 0
    -- Multiple tracks → avoid playing the same one twice in a row
    repeat
        local randomIndex = math.random(trackCount)
        chosenTrack = tracks[randomIndex]
        attempts = attempts + 1
    until chosenTrack.file ~= m.previousTrack or attempts == 5

    return chosenTrack
end

-- Get zone music data from zoneData.lua
local function GetZoneMusicData(zone, subzone)
    
    local zoneEntry = MusicExpanded_Data.Zones[zone]
    if not zoneEntry then
        m.inCustomArea = false
        return nil -- Not a custom zone → use vanilla music
    end

    if subzone and zoneEntry.subzones and zoneEntry.subzones[subzone] then
        local subzoneEntry = zoneEntry.subzones[subzone]

        if subzoneEntry.tracks then
            m.inCustomArea = true
            return subzoneEntry -- if tracks = {} then vanilla music plays
        end                     -- if tracks = {track1, track2} then custom music plays
    end

    if zoneEntry.tracks and table.getn(zoneEntry.tracks) > 0 then -- No specific subzone data → use the main zone tracks
        m.inCustomArea = true
        return zoneEntry
    end

    m.inCustomArea = false
    return nil -- Zone exists but has no music defined → use vanilla
end

-- Respond to zonechange, check current zone/subzone
local function ZoneMusicTrigger(source) -- Change behavior based on the source of the trigger
    -- sources; zoneChanged, command, event, intro, update

    if source == "update" and m.nextTrackTime >= GetTime() then -- If timer isn't ready, don't trigger new music
        return
    end

    if (m.introTrackEndTime and m.introTrackEndTime >= GetTime()) 
    or (m.eventTrackEndTime and m.eventTrackEndTime >= GetTime()) then -- Check if intro or event music is playing, if so, don't change the music
        return
    end
    
    local zone = m.currentZone 
    local subzone = m.currentSubzone
    local musicData = GetZoneMusicData(zone, subzone)

    if musicData and musicData.tracks and table.getn(musicData.tracks) > 0 then -- If music data is valid, continue
        if source == "zoneChanged" and CompareZoneData(m.previousTrack, musicData) then
            return -- Zone change triggered music, but the previous track is still valid for this zone, so don't interrupt it.
        end
    
        local chosen = ChooseRandomTrack(musicData)

        PlayCustomTrack(chosen.file)
        m.previousTrack = chosen.file

        local duration = chosen.duration - 2 or 4 -- Fallback duration 4 seconds, to ensure quick retry
            
        if m.loopMusic == 1 then
            m.nextTrackTime = GetTime() + duration
        else
            m.nextTrackTime = GetTime() + duration + math.random(180, 300)
            m.nextsilenceTime = GetTime() + duration
        end
    elseif source == "zoneChanged" then
        StopMusic()
        m.nextTrackTime = GetTime()
    end
end

-- Timer based on OnUpdate frame update event.
local function CheckTimer()

    if m.eventTrackEndTime then -- event track has played recently
        if m.eventTrackEndTime <= GetTime() then -- event track has ended
            
            StopMusic()
            m.eventTrackEndTime = nil
            return 
        else
            return
        end
    end

    if m.introTrackEndTime then -- intro track has played recently
        if m.introTrackEndTime <= GetTime() then -- intro track has ended
            
            StopMusic()
            m.introTrackEndTime = nil
            return 
        else
            return
        end
    end

    if not m.inCustomArea then 
        return 
    end
    
    if GetTime() >= m.nextTrackTime then
        ZoneMusicTrigger("update")
        return
    end

    if m.nextsilenceTime then
        if GetTime() <= m.nextsilenceTime then

            PlayMusic(silenceFile)
            m.nextsilenceTime = nil
        end
    end
end


-- Find event based on target
local function CheckForEvent(target, targettarget, subzone)
    
    local subzoneEvents = MusicExpanded_Events[subzone]
    if not subzoneEvents then
        return false
    end

    local possibleNPCs = {target, targettarget}
    local eventData = nil
    local matchedNPC = nil 

    for _, name in ipairs(possibleNPCs) do
        if name and subzoneEvents[name] then
            matchedNPC = name
            eventData = subzoneEvents[name]
            break
        end
    end
        
    local cooldownKey = nil

    if matchedNPC then
        cooldownKey = subzone .. "_" .. matchedNPC
    else
        return false
    end

    if m.eventCooldowns and m.eventCooldowns[cooldownKey] then
        if GetTime() < m.eventCooldowns[cooldownKey] then
            return false
        end
    end

    local tracks = eventData.tracks
    local chosenTrack = tracks[math.random(table.getn(tracks))]
                
    PlayCustomTrack(chosenTrack.file)

    local duration = chosenTrack.duration or 180

    m.eventCooldowns = m.eventCooldowns or {}
    m.eventCooldowns[cooldownKey] = GetTime() + 600

    m.eventTrackEndTime = GetTime() + duration - 2.5
    return true
end


-- Intro Music
local function CheckForIntroMusic()
    
    local zoneEntry = MusicExpanded_Data.Zones[m.currentZone]
    if not zoneEntry then
        return false
    end

    local introData = nil

    if zoneEntry.subzones and zoneEntry.subzones[m.currentSubzone] then

        local sub = zoneEntry.subzones[m.currentSubzone]
        if sub.intro and table.getn(sub.intro) > 0 then
            introData = sub.intro
        end
    end

    if not introData and zoneEntry.intro and table.getn(zoneEntry.intro) > 0 then
        introData = zoneEntry.intro
    end

    if not introData then
        return false
    end

    local cooldownKey = m.currentZone .. "_" .. (m.currentSubzone or "zone")
    m.introCooldowns = m.introCooldowns or {}

    if m.introCooldowns[cooldownKey] then
        if GetTime() < m.introCooldowns[cooldownKey] then
            return false
        end
    end

    local chosen = introData[math.random(table.getn(introData))]

    PlayCustomTrack(chosen.file)

    m.introCooldowns[cooldownKey] = GetTime() + 600
    m.introTrackEndTime = GetTime() + chosen.duration - 2.5
    m.inCustomArea = true

    return true
end


-- Zonechange trigger
local zoneFrame = CreateFrame("Frame")

zoneFrame:RegisterEvent("PLAYER_ENTERING_WORLD") -- Login or reload
zoneFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA") -- Zone change
zoneFrame:RegisterEvent("ZONE_CHANGED") -- Subzone change
zoneFrame:RegisterEvent("ZONE_CHANGED_INDOORS") -- Subzone change in dungeon

zoneFrame:SetScript("OnEvent", function(self, event)
    m.currentZone = GetZoneText() or ""
    m.currentSubzone = GetSubZoneText() or ""

    CheckForIntroMusic()
    ZoneMusicTrigger("zoneChanged")
end)

-- Timer trigger
local timerFrame = CreateFrame("Frame")

timerFrame:SetScript("OnUpdate", CheckTimer) -- OnUpdate means when the frame is updated (many times every second)

-- Event trigger for target changes, to check for event music
local eventFrame = CreateFrame("Frame")

eventFrame:RegisterEvent("PLAYER_TARGET_CHANGED")

eventFrame:SetScript("OnEvent", function(self, event)
    local target = UnitName("target")
    local targettarget = UnitName("targettarget")
    local subzone = GetSubZoneText() or ""

    CheckForEvent(target, targettarget, subzone)
end)

-- slash commands
SLASH_MEX1 = "/musicexpanded"
SLASH_MEX2 = "/mex"

function SlashCmdList.MEX(msg)
    -- Find the first space
    local spacePos = strfind(msg, " ")
    if spacePos then
        command  = strsub(msg, 1, spacePos - 1)
        argument = strsub(msg, spacePos + 1)
    else
        command  = msg
        argument = nil
    end

    if command == "play" then
        if argument == "random" then
            print("|cFF00FF00[MusicExpanded]|r Rerolling music.")
            ZoneMusicTrigger("command")

        elseif argument and argument ~= "" then
            PlayCustomTrack(argument)

        else
            print("|cFFFF0000[MusicExpanded]|r Usage: /mex play <trackname> - Example: /mex play forsakenflame_b")
        end
        
    elseif command == "stop" then
        StopMusic()
        print("|cFF00FF00[MusicExpanded]|r Custom music stopped. Returning to default.")

    elseif command == "loop" then
        if m.loopMusic == 1 then
            m.loopMusic = 0
            print("|cFF00FF00[MusicExpanded]|r Music looping disabled. Does not affect base game music, check your Interface Music settings.")
        else
            m.loopMusic = 1
            print("|cFF00FF00[MusicExpanded]|r Music looping enabled (default). Does not affect base game music, check your Interface Music settings.")
        end

        MusicExpandedDB.loopMusic = m.loopMusic
        ZoneMusicTrigger("command")

    elseif command == "status" then
        print("|cFF00FF00[MusicExpanded]|r Status:")
        print("  Current Zone: " .. (GetZoneText() or "Unknown"))
        print("  Current Subzone: " .. (GetSubZoneText() or "Unknown"))
        print("  In Custom Area: " .. tostring(m.inCustomArea))
        print("  Loop Music: " .. (m.loopMusic == 1 and "Enabled" or "Disabled"))
        print("  Previous Track: " .. (m.previousTrack or "None"))

    else
        print("|cFF00FF00[MusicExpanded]|r Commands: /mex play | stop | loop | status")
    end
end