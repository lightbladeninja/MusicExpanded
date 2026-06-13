MusicExpanded = MusicExpanded or {}
local m = MusicExpanded

-- Compatibility fix for Vanilla 1.12 (Turtle WoW)
if not print then
    print = function(msg)
        DEFAULT_CHAT_FRAME:AddMessage(msg)
    end
end

local MUSIC_ROOT = "Interface\\AddOns\\MusicExpanded\\music\\zone\\"

m.lastSubzone = ""
m.currentZone = nil
m.nextTrackTime = 0
m.inCustomArea = false
m.pendingMusic = nil
m.pendingStart = nil
m.lastTracks = nil

local function NormalizeFolderName(name)
    if type(name) ~= "string" then return "" end
    name = string.lower(name)
    name = string.gsub(name, " ", "_")
    name = string.gsub(name, "[^%w_%-%.]", "")
    return name
end

-- Main play function (now supports subzones + indoor music)
local function PlayCustomTrack(zoneKey, subzoneKey)
    local zoneData = MusicExpanded_Data.Zones[zoneKey]
    if not zoneData or not zoneData.tracks then
        return false
    end

    local tracks = zoneData.tracks
    local folderName = NormalizeFolderName(zoneKey)

    if subzoneKey and zoneData.subzones and zoneData.subzones[subzoneKey] then
        local sub = zoneData.subzones[subzoneKey]
        if sub.tracks and table.getn(sub.tracks) > 0 then
            tracks = sub.tracks
            folderName = NormalizeFolderName(zoneKey) .. "\\" .. NormalizeFolderName(subzoneKey)
        end
    end

    if not tracks or table.getn(tracks) == 0 then
        return false
    end

    local chosen = tracks[math.random(table.getn(tracks))]

    -- Store for delayed playback
    m.pendingMusic = {
        path = MUSIC_ROOT .. folderName .. "\\" .. chosen.file,
        file = chosen.file,
        zoneKey = zoneKey,
        duration = chosen.duration or 180
    }

    StopMusic()

    return true
end

--
local function GetEffectiveMusicData(zone, subzone)
    
    local zoneEntry = MusicExpanded_Data.Zones[zone]
    if not zoneEntry then 
        print("[MusicExpanded] Zone not found: " .. zone)
        return nil 
    end

    if subzone and zoneEntry.subzones and zoneEntry.subzones[subzone] then
        local subData = zoneEntry.subzones[subzone]
        if subData.tracks and table.getn(subData.tracks) > 0 then
            return subData
        else
            return nil
        end
    end

    if zoneEntry.tracks and table.getn(zoneEntry.tracks) > 0 then
        return zoneEntry
    end

    return nil
end

-- Updated zone handler with subzone support
local function UpdateMusicState()
    local zone = GetZoneText() or ""
    local subzone = GetSubZoneText() or ""

    if subzone ~= m.lastSubzone then
        m.lastSubzone = subzone
    end

    local effectiveData = GetEffectiveMusicData(zone, subzone)
    local hasCustomData = effectiveData ~= nil

    if hasCustomData then
        -- Restart only when music set actually changes or we enter custom area
        if not m.inCustomArea 
           or m.currentZone ~= zone 
           or m.lastTracks ~= effectiveData.tracks then

            print("[MusicExpanded] Changing music for: " .. zone .. " (" .. subzone .. ")")
            m.inCustomArea = true
            m.currentZone = zone
            m.lastTracks = effectiveData.tracks
            PlayCustomTrack(zone, subzone)
            m.pendingStart = GetTime() + 2   -- 2 second delay
        end
    else
        if m.inCustomArea then
            print("[MusicExpanded] Left custom area → returning to default music")
            m.inCustomArea = false
            m.currentZone = nil
            m.lastTracks = nil
            m.pendingMusic = nil
            m.pendingStart = nil
            StopMusic()
        end
    end
end


-- Timer: Play next track when current one ends
local function OnUpdate()
    -- Handle pending music after delay
    if m.pendingMusic then
        if GetTime() >= (m.pendingStart or 0) then
            PlayMusic(m.pendingMusic.path)
            print("|cFF00FF00[MusicExpanded]|r Playing: " .. m.pendingMusic.file)

            m.currentZone = m.pendingMusic.zoneKey
            m.nextTrackTime = GetTime() + m.pendingMusic.duration
            m.pendingMusic = nil
            m.pendingStart = nil
        end
        return
    end

    -- Normal auto-next track
    if not m.inCustomArea or not m.currentZone then return end

    if GetTime() >= m.nextTrackTime then
        PlayCustomTrack(m.currentZone, m.lastSubzone)
    end
end


-- Event Frame (pfQuest style)
local eventFrame = CreateFrame("Frame")

eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
eventFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
eventFrame:RegisterEvent("ZONE_CHANGED")
eventFrame:RegisterEvent("ZONE_CHANGED_INDOORS")

eventFrame:SetScript("OnUpdate", OnUpdate)
eventFrame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
        m.isIndoors = false
        print("|cFF00FF00[MusicExpanded]|r Loaded!")
        C_Timer.After(2, UpdateMusicState)

    elseif event == "ZONE_CHANGED_INDOORS" then
        m.isIndoors = true
        print("Now indoors")
        UpdateMusicState()

    elseif event == "ZONE_CHANGED_NEW_AREA" then
        print("ZONE_CHANGED_NEW_AREA detected")
        m.isIndoors = false
        UpdateMusicState()

    else
        -- Normal ZONE_CHANGED (subzone change) — do NOT touch m.isIndoors
        UpdateMusicState()
    end
end)


-- Slash Commands
SLASH_MUSICEXPANDED1 = "/musicexp"
SLASH_MUSICEXPANDED2 = "/mex"

function SlashCmdList.MUSICEXPANDED(msg)
    local zone = GetZoneText() or ""

    if msg == "play" then
        PlayCustomTrack(m.currentZone, m.lastSubzone)
        print("Rerolling music track")
    elseif msg == "stop" then
        StopMusic()
        m.inCustomArea = false
        m.currentZone = nil
        print("|cFF00FF00[MusicExpanded]|r Custom music stopped, resuming default music")
    elseif msg == "status" then
        print("|cFF00FF00[MusicExpanded]|r Custom area: " .. tostring(m.inCustomArea))
        print("Zone: " .. zone .. " | Subzone: " .. (GetSubZoneText() or ""))
        print("Current music zone: " .. tostring(m.currentZone))
    else
        print("|cFF00FF00[MusicExpanded]|r Commands: /mex play | stop | status")
    end
end