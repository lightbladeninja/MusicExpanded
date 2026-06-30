MusicExpanded_Data = MusicExpanded_Data or {}

-- Shared music for Tower of Althalaxx + The Master's Glaive
local cultMusic = {
    { file = "forsakenflame_e.mp3", weight = 5, duration = 77 },
    { file = "forsakenflame_a.mp3", weight = 5, duration = 87 },
    { file = "mystery01-zone.mp3", weight = 1, duration = 60 },
    { file = "mystery05-zone.mp3", weight = 1, duration = 81 },
    { file = "mystery07-zone.mp3", weight = 1, duration = 83 }
}

local nagaCave = {
    { file = "fromthedepths_1_a.mp3", weight = 5, duration = 95 },
    { file = "fromthedepths_1_c.mp3", weight = 5, duration = 68 },
    { file = "fromthedepths_1_d.mp3", weight = 5, duration = 89 },
    { file = "fromthedepths_1_e.mp3", weight = 5, duration = 75 }
}


local dwarfDigsite = {
    { file = "dwarf_ddark_uni05.mp3", weight = 5, duration = 69 },
    { file = "dwarf_c_day03.mp3", weight = 5, duration = 42 },
    { file = "dwarf_c_night03.mp3", weight = 5, duration = 42 },
    { file = "dwarf_d_day04.mp3", weight = 5, duration = 45 },
    { file = "dwarf_b_day02.mp3", weight = 5, duration = 97 }
}

local darkironDigsite = {
    { file = "forsakenflame_e.mp3", weight = 5, duration = 77 },
}

local highborne = {
    { file = "ruinsofzinazshari_a.mp3", weight = 5, duration = 167 },
    { file = "ruinsofzinazshari_b.mp3", weight = 5, duration = 172 },
    { file = "ruinsofzinazshari_c.mp3", weight = 5, duration = 75 },
    { file = "zinazshari_h1.mp3", weight = 5, duration = 177 },
    { file = "zinazshari_1.mp3", weight = 5, duration = 92 },
    { file = "zinazshari_2.mp3", weight = 5, duration = 71 },
    { file = "zinazshari_4.mp3", weight = 5, duration = 106 },
    { file = "zinazshari_5.mp3", weight = 5, duration = 92 },
    { file = "zinazshari_6.mp3", weight = 5, duration = 113 },
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
            ["Grove of the Ancients"] = {
                tracks = {}
            },
            ["Ameth'Aran"] = {
                tracks = {}
            },
            ["Tower of Althalaxx"] = {
                tracks = cultMusic
            },
            ["The Master's Glaive"] = {
                tracks = cultMusic
            },
            ["Remtravel's Excavation"] = {
                tracks = dwarfDigsite
            },
            ["Cliffspring Falls"] = {
                tracks = nagaCave
            }
        }
    },

    ["Loch Modan"] = {
        tracks = {},
        subzones = {
            ["Ironband's Excavation Site"] = {
                tracks = dwarfDigsite
            }
        }
    },
    ["The Barrens"] = {
        tracks = {},
        subzones = {
            ["Bael Modan"] = {
                tracks = dwarfDigsite
            }
        }
    },
    ["Wetlands"] = {
        tracks = {},
        subzones = {
            ["Whelgar's Excavation Site"] = {
                tracks = dwarfDigsite
            },
            ["Direforge Hill"] = {
                tracks = {} -- something dark iron
            },
            ["Dun Modr"] = {
                tracks = {} -- something dark iron
            }
        }
    },
    ["Badlands"] = {
        tracks = {},
        subzones = {
            ["Hammertoe's Digsite"] = {
                tracks = darkironDigsite
            },
            ["Angor Fortress"] = {
                tracks = {}
            }
        }
    },
    ["Searing Gorge"] = {
        tracks = {},
        subzones = {
            ["Grimesilt Dig Site"] = {
                tracks = darkironDigsite
            }
        }
    },
    ["Burning Steppes"] = {
        tracks = {},
        subzones = {
            ["Ruins of Thaurissian"] = {
                tracks = {} -- darkironforge (Grim Batol)
            }
        }
    },
    ["Winterspring"] = {
        tracks = {},
        subzones = {
            ["Lake Kel'Theril"] = {
                tracks = {}
            },
            ["The Ruins of Kel'Theril"] = {
                tracks = highborne
            }
        }
    },
    ["Azshara"] = {
        tracks = {},
        subzones = {
            ["Ruins of Eldarath"] = {
                tracks = {}
            },
            ["Temple of Zin-Malor"] = {
                tracks = highborne
            }
        }
    },
    ["Feralas"] = {
        tracks = {},
        subzones = {
            ["Lariss Pavilion"] = {
                tracks = highborne
            },
            ["Shalzaru's Lair"] = {
                tracks = nagaCave
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