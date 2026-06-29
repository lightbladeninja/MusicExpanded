MusicExpanded = MusicExpanded or {}
local m = MusicExpanded

local MUSIC_ROOT = "Interface\\AddOns\\MusicExpanded\\music\\"
local currentSubzone = ""

m.inCustomArea = false
m.previousTrack = nil

-- Print doesn't exist in 1.12, so we add a print function through the addon
if not print then
    print = function(msg)
        DEFAULT_CHAT_FRAME:AddMessage(msg)
    end
end

-- IsIndoors() doesn't exist in 1.12. SOLUTION?! Detect if the minimap changed shape, like usually happens inside buildings and caves.


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


-- Find the full path for a music file based on the registry
local function GetMusicPath(trackName)
    -- Safety check: make sure the registry exists
    if not MusicExpanded_Registry or not MusicExpanded_Registry.Files then
        return nil
    end

    -- Look up the file in the registry
    local relativePath = MusicExpanded_Registry.Files[trackName]

    if not relativePath then
        return nil
    end

    -- Return the full path
    return MUSIC_ROOT .. relativePath
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


-- Choose a random track from the provided music data
local function ChooseRandomTrack(musicData)
    
    local tracks = musicData.tracks
    local trackCount = table.getn(tracks)

    -- Pick a random index
    local randomIndex = math.random(trackCount)
    local chosenTrack = tracks[randomIndex]
    m.previousTrack = chosenTrack.file -- store the track to compare later

    -- Return the full track entry (contains file, weight, and duration)
    return chosenTrack
end

-- Get zone music data from zoneData.lua
local function GetZoneMusicData(zone, subzone)
    -- 1. Check if this zone exists in our data
    local zoneEntry = MusicExpanded_Data.Zones[zone]
    if not zoneEntry then
        return nil -- Not a custom zone → use vanilla music
    end

    -- 2. Check if the current subzone has its own music data
    if subzone and zoneEntry.subzones and zoneEntry.subzones[subzone] then
        local subzoneData = zoneEntry.subzones[subzone]

        -- If the subzone has tracks (even if empty), return it
        if subzoneData.tracks then
            return subzoneData
        end
    end

    -- 3. No specific subzone data → use the main zone tracks (if any)
    if zoneEntry.tracks and table.getn(zoneEntry.tracks) > 0 then
        return zoneEntry
    end

    -- 4. Zone exists but has no music defined → use vanilla
    return nil
end


-- Respond to zonechange, check current zone/subzone
local function UpdateMusicState()
    local zone = GetZoneText() or ""
    local subzone = GetSubZoneText() or ""
    m.currentSubzone = subzone

    local musicData = GetZoneMusicData(zone, subzone)

    if musicData and musicData.tracks and table.getn(musicData.tracks) > 0 then
        -- We have custom music for this zone/subzone

        if m.previousTrack and CompareZoneData(m.previousTrack, musicData) then
            -- The previous track still exists in this new subzone → do nothing
            m.inCustomArea = true
            return
        end

        -- Either no previous track, or the previous track is not in this music set
        local chosen = ChooseRandomTrack(musicData)

        if chosen then
            m.inCustomArea = true
            m.previousTrack = chosen.file          -- store filename as string
            PlayCustomTrack(chosen.file)
            m.nextTrackTime = GetTime() + (chosen.duration or 180)
        end

    else
        -- No custom music for this area
        if m.inCustomArea then
            StopMusic()
        end
        m.inCustomArea = false
        m.previousTrack = nil
    end
end

-- Timer

local function OnUpdate()
    -- Priority 1: Check if an event track should end
    if m.isEventTrack and m.eventTrackEndTime then
        if GetTime() >= m.eventTrackEndTime then
            StopMusic()

            -- Clean up
            m.eventTrackEndTime = nil
            m.isEventTrack = nil
            m.previousTrack = nil
        end
        return   -- Don't run normal music logic while an event track is playing
    end

    if not m.inCustomArea then 
        return 
    end

    -- Priority 2: Normal music timer
    if GetTime() >= m.nextTrackTime then
        m.previousTrack = nil
        UpdateMusicState()
    end
end

-- Find event based on target

local function CheckForEvent(target, targettarget, subzone)
    if not subzone or subzone == "" then
        return false
    end

    local subzoneEvents = MusicExpanded_Events[subzone]
    if not subzoneEvents then
        return false
    end

    -- Try target first, then targettarget
    local possibleNPCs = { target, targettarget }

    for _, npcName in ipairs(possibleNPCs) do
        if npcName and subzoneEvents[npcName] then
            -- Found a match!

            -- Cooldown check
            local cooldownKey = subzone .. "_" .. npcName
            if m.eventCooldowns and m.eventCooldowns[cooldownKey] then
                if GetTime() < m.eventCooldowns[cooldownKey] then
                    return false -- Still on cooldown
                end
            end

            -- Get the track filename
            local musicfile = subzoneEvents[npcName].file
            local duration = subzoneEvents[npcName].duration or 180

            if musicfile then
                PlayCustomTrack(musicfile)

                -- Set 10 minute cooldown
                m.eventCooldowns = m.eventCooldowns or {}
                m.eventCooldowns[cooldownKey] = GetTime() + 600

                -- Set end time for this event track (used in OnUpdate)
                m.eventTrackEndTime = GetTime() + duration - 2.5
                m.isEventTrack = true   -- Flag so OnUpdate knows it's an event track

                return true
            end
        end
    end

    return false
end


-- Detect zonechange and creature event
local zoneFrame = CreateFrame("Frame")

zoneFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
zoneFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
zoneFrame:RegisterEvent("ZONE_CHANGED")

zoneFrame:SetScript("OnEvent", function(self, event)
    UpdateMusicState()
end)

zoneFrame:SetScript("OnUpdate", OnUpdate) -- OnUpdate means when the frame is updated (many times every second)

--
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
            m.previousTrack = nil
            UpdateMusicState()

        elseif argument and argument ~= "" then
            PlayCustomTrack(argument)

        else
            print("|cFFFF0000[MusicExpanded]|r Usage: /mex play <trackname> - Example: /mex play forsakenflame_b")
        end
        
    elseif command == "stop" then
        StopMusic() -- Only works on custom music, not the default zone music.
        print("|cFF00FF00[MusicExpanded]|r Custom music stopped. Returning to default.")

    else
        print("|cFF00FF00[MusicExpanded]|r Commands: /mex play | stop")
    end
end
