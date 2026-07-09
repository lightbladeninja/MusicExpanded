MusicExpanded_Data = MusicExpanded_Data or {}

-- Shared music for Tower of Althalaxx + The Master's Glaive
local cultMusic = {
    { file = "forsakenflame_e.mp3", duration = 77 },
    { file = "forsakenflame_a.mp3", duration = 87 },
    { file = "mystery_1.mp3", duration = 60 },
    { file = "mystery_5.mp3", duration = 81 },
    { file = "mystery_7.mp3", duration = 83 }
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
    { file = "ruinsofzinazshari_b.mp3", duration = 172 },
    { file = "ruinsofzinazshari_c.mp3", duration = 75 },
    { file = "zinazshari_h1.mp3", duration = 177 },
    { file = "zinazshari_1.mp3", duration = 92 },
    { file = "zinazshari_2.mp3", duration = 71 },
    { file = "zinazshari_4.mp3", duration = 106 },
    { file = "zinazshari_5.mp3", duration = 92 },
    { file = "zinazshari_6.mp3", duration = 113 },
}

local scholomance = {
    { file = "scholomance_1.mp3", duration = 59 },
    { file = "scholomance_3.mp3", duration = 61 },
    { file = "scholomance_4.mp3", duration = 78 },
    { file = "scholomance_6.mp3", duration = 81 },
    { file = "scholomance_8.mp3", duration = 78 },
    { file = "scholomance_9.mp3", duration = 91 },
    { file = "scholomance_10.mp3", duration = 84 },
    { file = "scholomance_11.mp3", duration = 58 },
    { file = "scholomance_12.mp3", duration = 103 },
    { file = "haunted01.mp3", duration = 62 },
    { file = "ghosts_1.mp3", duration = 84 },
    { file = "ghosts_2.mp3", duration = 84 },
    { file = "ghosts_3.mp3", duration = 91 },
}

local haunted = {
    { file = "shadow_death_b.mp3", duration = 129 },
    { file = "haunted01.mp3", duration = 62 },
    { file = "ghosts_1.mp3", duration = 84 },
    { file = "ghosts_2.mp3", duration = 84 },
    { file = "ghosts_3.mp3", duration = 91 },
}

local spookyIntro = {
    { file = "haunted02.mp3", duration = 60 },
}

local mysteryEvil = {
    { file = "mystery_5.mp3", duration = 81 },
    { file = "mystery_8.mp3", duration = 83 },
    { file = "mystery_9.mp3", duration = 82 },
    { file = "mystery_10.mp3", duration = 82 }
}

local scarletMonastery = {
    { file = "haunted_1.mp3", duration = 111 },
    { file = "haunted_3.mp3", duration = 109 },
    { file = "cursedland04.mp3", duration = 79 },
    { file = "cursedland05.mp3", duration = 82 },
    { file = "cursedland06.mp3", duration = 74 },
    { file = "scarletmonastery_h1.mp3", duration = 83 },
    { file = "scarletmonastery_h2.mp3", duration = 54 },
    { file = "scarletmonastery_h3.mp3", duration = 117 },
}

local scarletIntro = {
    { file = "sacred01.mp3", duration = 16 - 1 },
    { file = "gloomy02.mp3", duration = 39 },
}

local orcIntro = {
    { file = "orcintro_1.mp3", duration = 11 - 0.5},
    { file = "orcintro_2.mp3", duration = 17 - 0.5},
    { file = "orcintro_3.mp3", duration = 11 - 0.5},
    { file = "orcintro_4.mp3", duration = 13 - 0.5},
}

MusicExpanded_Data.Zones = {

    ["Tirisfal Glades"] = {
        tracks = {},
        subzones = {
            ["Deathknell"] = {
                intro = {},
                tracks = haunted
            },
            ["Agamand Mills"] = {
                tracks = haunted,
                intro = {}
            },
            ["Agamand Family Crypt"] = {
                tracks = haunted,
                intro = {}
            },
            ["Brill"] = {
                tracks = haunted,
                intro = {}
            },
            ["Balnir Farmstead"] = {
                intro = {},
                tracks = haunted
            },
            ["Whispering Gardens"] = {
                intro = {
                    { file = "shadow_death_a.mp3", duration = 92 },
                },
                tracks = {}
            },
        }
    },
    ["Undercity"] = {
        tracks = {},
        subzones = {
            ["Royal Quarter"] = {
                intro = {
                    { file = "windrunner_h.mp3", duration = 129 },
                    { file = "sylvanas_freewill_h.mp3", duration = 172 }
                },
                tracks = {}
            }
        }
    },
    ["Silverpine Forest"] = {
        tracks = {},
        subzones = {
            ["The Sepulcher"] = {
                tracks = haunted,
                intro = {}
            }
        }
    },
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
                tracks = haunted,
                intro = {}
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
                tracks = {}
            },
            ["Dun Modr"] = {
                tracks = {} 
            },
            ["Angerfang Encampment"] = { -- Add for Grim Reaches dragonmaw orcs
                intro = orcIntro,
                tracks = {}
            }
        }
    },
    ["Duskwood"] = {
        tracks = {},
        subzones = {
            ["Tranquil Gardens Cemetery"] = {
                tracks = haunted,
                intro = {}
            },
            ["Raven Hill Cemetery"] = {
                intro = {},
                tracks = haunted
            },
            ["Forlorn Rowe"] = {
                intro = spookyIntro,
                tracks = {}
            },
        }
    },
    ["Grim Reaches"] = {
        tracks = {},
        subzones = {
            ["Darkbeard Digsite"] = {
                tracks = darkironDigsite
            },
            ["The Grim Batol Memorial"] = {
                tracks = haunted,
                intro = {}
            },
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
    ["Desolace"] = {
        tracks = {},
        subzones = {
            ["Valley of Bones"] = {
                tracks = {
                    { file = "bonewalk_1.mp3", duration = 65 },
                    { file = "bonewalk_2.mp3", duration = 63 },
                    { file = "bonewalk_3.mp3", duration = 56 },
                    { file = "bonewalk_4.mp3", duration = 189 },
                }
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
    ["Feralas"] = {
        tracks = {},
        subzones = {
            ["Lariss Pavilion"] = {
                tracks = highborne,
                intro = {
                    { file = "ruinsofzinazshari_a.mp3", duration = 167 },
                }
            },
            ["Shalzaru's Lair"] = {
                tracks = nagaCave
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
    ["Azshara"] = {
        tracks = {},
        subzones = {
            ["Ruins of Eldarath"] = {
                tracks = {}
            },
            ["Temple of Zin-Malor"] = {
                tracks = highborne,
                intro = {
                    { file = "ruinsofzinazshari_a.mp3", duration = 167 },
                }
            },
            ["Shadowsong Shrine"] = {
                tracks = highborne,
                intro = {
                    { file = "ruinsofzinazshari_a.mp3", duration = 167 },
                }
            },
        }
    },
    ["Western Plaguelands"] = {
        tracks = {},
        subzones = {
            ["Ruins of Andorhal"] = {
                intro = spookyIntro,
                tracks = haunted
            },
            ["Uther's Tomb"] = {
                tracks = haunted,
                intro = {}
            },
        }
    },
    ["Eastern Plaguelands"] = {
        tracks = {},
        subzones = {
            ["Light's Hope Chapel"] = {
                tracks = {
                    { file = "arathi_memorial_h.mp3", duration = 279 }
                },
                intro = {}
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
                tracks = highborne,
                intro = {
                    { file = "ruinsofzinazshari_a.mp3", duration = 167 },
                }
            }
        }
    },

    --============================================================  Dungeons  ============================================================

    ["Scarlet Monastery"] = { -- Armory uses this
        intro = {},
        tracks = scarletMonastery,
        subzones = {
            [""] = {
                intro = {},
                tracks = scarletMonastery
            },
            ["The Grand Vestibule"] = {
                intro = {},
                tracks = scarletMonastery
            },
        }
    },
    ["Scarlet Monastery Graveyard"] = {
        intro = {},
        tracks = scarletMonastery,
        subzones = {
            [""] = {
                intro = {},
                tracks = scarletMonastery
            },
            ["Forlorn Cloister"] = {
                intro = {
                    { file = "shadow_death_h.mp3", duration = 154 },
                },
                tracks = haunted
            },
            ["Scarlet Prison"] = {
                tracks = mysteryEvil,
                intro = {}
            }
        }
    },
    ["Scarlet Monastery Library"] = {
        intro = {},
        tracks = scarletMonastery,
        subzones = {
            [""] = {
                intro = scarletIntro,
                tracks = scarletMonastery,
            },
            ["Huntsman's Cloister"] = {
                intro = {},
                tracks = scarletMonastery,
            },
            ["Athenaeum"] = {
                intro = {
                    { file = "battle04.mp3", duration = 36 - 1 } 
                },
                tracks = scarletMonastery
            }
        }
    },
    ["Scarlet Monastery Cathedral"] = {
        tracks = scarletMonastery,
        intro = {},
        subzones = {
            [""] = {
                intro = scarletIntro,
                tracks = scarletMonastery
            },
            ["Chapel Gardens"] = {
                intro = {},
                tracks = scarletMonastery
            },
            ["Crusader's Chapel"] = {
                intro = {
                    { file = "sacred02.mp3", duration = 19 },
                },
                tracks = scarletMonastery
            },
        },
        intro = scarletIntro
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
    ["Stratholme"] = {
        intro = {},
        tracks = {},
        subzones = {
            ["Crusaders' Square"] = {
                tracks = scarletMonastery,
                intro = scarletIntro
            },
            ["The Scarlet Bastion"] = {
                tracks = scarletMonastery,
                intro = {}
            },
            ["The Hall of Lights"] = {
                tracks = scarletMonastery,
                intro = { 
                    { file = "battle04.mp3", duration = 36 }
                }
            },
            ["The Hoard"] = {
                tracks = scarletMonastery,
                intro = {
                    { file = "battle03.mp3", duration = 27 }
                }
            },
            ["The Crimson Throne"] = {
                tracks = {
                    { file = "eh_assault_6.mp3", duration = 93 },
                    { file = "eh_assault_7.mp3", duration = 95 }
                },
                intro = {}
            },
        },
    },
    ["Scholomance"] = {
        intro = {},
        tracks = scholomance,
        subzones = {
            [""] = {
                intro = spookyIntro,
                tracks = scholomance
            },
            ["The Reliquary"] = {
                intro = {
                    { file = "shadow_death_h.mp3", duration = 154 }
                },
                tracks = scholomance
            }
        }
    },
}
