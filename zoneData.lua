MusicExpanded_Data = MusicExpanded_Data or {}

MusicExpanded_Data.Zones = {

    ["Darkshore"] = {
        tracks = { -- Default music for the whole zone (used if subzone has no specific data)
            { file = "nightwarrior_a.mp3", weight = 1, duration = 88 },
            { file = "nightwarrior_c.mp3", weight = 1, duration = 102 },
            { file = "forsakenflame_f.mp3", weight = 1, duration = 79 },
            { file = "forsakenflame_d.mp3", weight = 1, duration = 154 },
            { file = "forsakenflame_b.mp3", weight = 1, duration = 158 },
            { file = "nightforest01.mp3", weight = 1, duration = 53 },
            { file = "nightforest02.mp3", weight = 1, duration = 42 },
            { file = "nightforest03.mp3", weight = 1, duration = 59 },
            { file = "nightforest04.mp3", weight = 1, duration = 53 }
        },

        subzones = {
            -- Auberdine = no custom music (falls back to vanilla)
            ["Auberdine"] = {
                tracks = {}   -- Empty = exclude from custom music
            },
            ["Ruins of Mathystra"] = {
                tracks = {}   -- Empty = exclude from custom music
            },
            ["Tower of Althalaxx"] = {
                tracks = {
                { file = "forsakenflame_e.mp3", weight = 5, duration = 77 },
                { file = "forsakenflame_a.mp3", weight = 5, duration = 87 },
                { file = "mystery01-zone.mp3", weight = 1, duration = 60 },
                { file = "mystery05-zone.mp3", weight = 1, duration = 81 },
                { file = "mystery07-zone.mp3", weight = 1, duration = 83 }
                }
            }
        }
    },

    ["Loch Modan"] = {
        tracks = {},                    -- Empty = no zone-wide custom music

        subzones = {
            ["Ironband's Excavation Site"] = {
                tracks = {
                    { file = "excavation_site.mp3", weight = 5, duration = 135 },
                    { file = "dwarf_ambience.mp3",  weight = 3, duration = 110 },
                }
            }
        }
    },
}