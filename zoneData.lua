MusicExpanded_Data = MusicExpanded_Data or {}

-- Shared music for Tower of Althalaxx + The Master's Glaive
local cultMusic = {
    { file = "forsakenflame_e.mp3", weight = 5, duration = 77 },
    { file = "forsakenflame_a.mp3", weight = 5, duration = 87 },
    { file = "mystery01-zone.mp3", weight = 1, duration = 60 },
    { file = "mystery05-zone.mp3", weight = 1, duration = 81 },
    { file = "mystery07-zone.mp3", weight = 1, duration = 83 }
}

MusicExpanded_Data.Zones = {

    ["Darkshore"] = {
        tracks = {
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
            ["Auberdine"] = {
                tracks = {}
            },
            ["Ruins of Mathystra"] = {
                tracks = {}
            },

            -- Both subzones now use the same music
            ["Tower of Althalaxx"] = {
                tracks = cultMusic
            },
            ["The Master's Glaive"] = {
                tracks = cultMusic
            },

            ["Cliffspring Falls"] = {
                tracks = {
                    { file = "fromthedepths_1_a.mp3", weight = 5, duration = 95 },
                    { file = "fromthedepths_1_c.mp3", weight = 5, duration = 68 },
                    { file = "fromthedepths_1_d.mp3", weight = 5, duration = 89 },
                    { file = "fromthedepths_1_e.mp3", weight = 5, duration = 75 }
                }
            }
        }
    },

    ["Loch Modan"] = {
        tracks = {},
        subzones = {
            ["Ironband's Excavation Site"] = {
                tracks = {
                    { file = "excavation_site.mp3", weight = 5, duration = 135 },
                    { file = "dwarf_ambience.mp3",  weight = 3, duration = 110 },
                }
            }
        }
    },
    ["Blackrock Spire"] = {
        tracks = {},
        subzones = {
            ["Blackrock Stadium"] = {
                tracks = {},

                event = {
                    { file = "protectthethrone_h1.mp3", weight = 5, duration = 67 },
                    { file = "protectthethrone_h2.mp3",  weight = 3, duration = 98 },
                    { file = "protectthethrone_h3.mp3", weight = 5, duration = 92 }
                }
            }
        }
    }
}