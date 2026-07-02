MusicExpanded_Data = MusicExpanded_Data or {}

-- Shared music for Tower of Althalaxx + The Master's Glaive
local cultMusic = {
    { file = "forsakenflame_e.mp3", duration = 77 },
    { file = "forsakenflame_a.mp3", duration = 87 },
    { file = "mystery01-zone.mp3", duration = 60 },
    { file = "mystery05-zone.mp3", duration = 81 },
    { file = "mystery07-zone.mp3", duration = 83 }
}

local nagaCave = {
    { file = "fromthedepths_1_a.mp3", duration = 95 },
    { file = "fromthedepths_1_c.mp3", duration = 68 },
    { file = "fromthedepths_1_d.mp3", duration = 89 },
    { file = "fromthedepths_1_e.mp3", duration = 75 }
}


local dwarfDigsite = {
    { file = "dwarf_b_night2.mp3", duration = 95 },
    { file = "dwarf_b_day2.mp3", duration = 97 },
    { file = "dwarf_c_day3.mp3", duration = 42 },
    { file = "dwarf_c_night3.mp3", duration = 42 },
    { file = "dwarf_c_uni3.mp3", duration = 42 },
    { file = "dwarf_d_day4.mp3", duration = 45 },
}

local darkironDigsite = {
    { file = "dwarf_a_day1.mp3", duration = 99 },
    { file = "dwarf_a_night1.mp3", duration = 99 },
    { file = "dwarf_adark_uni1.mp3", duration = 112 },
    { file = "dwarf_b_uni2.mp3", duration = 163 },
    { file = "dwarf_cdark_uni4.mp3", duration = 82 },
    { file = "dwarf_ddark_uni5.mp3", duration = 69 },
}

local highborne = {
    { file = "ruinsofzinazshari_a.mp3", duration = 167 },
    { file = "ruinsofzinazshari_b.mp3", duration = 172 },
    { file = "ruinsofzinazshari_c.mp3", duration = 75 },
    { file = "zinazshari_h1.mp3", duration = 177 },
    { file = "zinazshari_1.mp3", duration = 92 },
    { file = "zinazshari_2.mp3", duration = 71 },
    { file = "zinazshari_4.mp3", duration = 106 },
    { file = "zinazshari_5.mp3", duration = 92 },
    { file = "zinazshari_6.mp3", duration = 113 },
}

MusicExpanded_Data.Zones = {

    ["Darkshore"] = {
        tracks = {
            { file = "nightwarrior_a.mp3", duration = 88 },
            { file = "nightwarrior_c.mp3", duration = 102 },
            { file = "forsakenflame_f.mp3", duration = 79 },
            { file = "forsakenflame_d.mp3", duration = 154 },
            { file = "forsakenflame_b.mp3", duration = 158 },
            { file = "nightforest01.mp3", duration = 53 },
            { file = "nightforest02.mp3", duration = 42 },
            { file = "nightforest03.mp3", duration = 59 },
            { file = "nightforest04.mp3", duration = 53 }
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
    ["Grim Reaches"] = {
        tracks = {},
        subzones = {
            ["Darkbeard Digsite"] = {
                tracks = darkironDigsite
            }
        }
    },
    ["Northwind"] = {
        tracks = {},
        subzones = {
            ["Hammerfoe's Quarry"] = {
                tracks = darkironDigsite
            }
        }
    },
    ["Badlands"] = {
        tracks = {},
        subzones = {
            ["Hammertoe's Digsite"] = {
                tracks = darkironDigsite
            },
            ["Angor Digsite"] = {
                tracks = darkironDigsite
            },
            ["The Maker's Terrace"] = {
                tracks = darkironDigsite
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
            ["Ruins of Thaurissan"] = {
                tracks = {
                    { file = "darkironforge_2.mp3", duration = 66 },
                    { file = "darkironforge_3.mp3", duration = 54 },
                    { file = "darkironforge_4.mp3", duration = 102 },
                    { file = "darkironforge_5.mp3", duration = 45 }
                }
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
--============================================================  Dungeons  ============================================================

    ["Scarlet Monastery Graveyard"] = {
        tracks = {},
        subzones = {
            ["Forlorn Cloister"] = {
                tracks = {},

                intro = {
                    { file = "shadow_death_h.mp3", duration = 154 },
                }
            }
        }
    },
    ["Uldaman"] = {
        tracks = {},
        intro = {},
        subzones = {
            ["Hall of the Keepers"] = {
                tracks = {},
                intro = {
                    { file = "lightningintro.mp3", duration = 82 },
                }
            },
            ["Map Chamber"] = {
                tracks = {},
                intro = {
                    { file = "lightningwalkfull.mp3", duration = 109 },
                }
            },
            ["Temple Hall"] = {
                tracks = {},
                intro = {
                    { file = "lightningwalkfull.mp3", duration = 109 },
                }
            },
            ["Echomok Cavern"] = {
                tracks = {},
                intro = {
                    { file = "lightningbattlewalk.mp3", duration = 52 },
                }
            },
            ["Khaz'goroth's Seat"] = {
                tracks = {},
                intro = {
                    { file = "preserver_h2end.mp3", duration = 151 },
                }
            },
            ["Hall of the Crafters"] = {
                tracks = {},
                intro = {
                    { file = "preserver_h1.mp3", duration = 90 },
                }
            }
        }
    },
    ["Blackrock Depths"] = {
        tracks = {},
        subzones = {
            ["Shadowforge City"] = {
                tracks = {},
                intro = {
                    { file = "darkironforge_1.mp3", duration = 154 },
                }
            },
            ["The Molten Bridge"] = {
                tracks = {},
                intro = {
                    --{ file = "darkironforge_1.mp3", duration = 154 }, firebreach
                }
            }
        }
    },
    ["Blackrock Spire"] = { -- NOT USED, see eventData.lua for Blackrock Stadium
        tracks = {},
        subzones = {
            ["Blackrock Stadium"] = {
                tracks = {},
                event = {
                    { file = "protectthethrone_h1.mp3", duration = 67 },
                    { file = "protectthethrone_h2.mp3",  weight = 3, duration = 98 },
                    { file = "protectthethrone_h3.mp3", duration = 92 }
                }
            }
        }
    }
}