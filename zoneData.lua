MusicExpanded_Data = MusicExpanded_Data or {}

local mystery = {
    { file = "mystery_1.mp3", duration = 60 },
    { file = "mystery_2.mp3", duration = 60 },
    { file = "mystery_3.mp3", duration = 60 },
    { file = "mystery_4.mp3", duration = 60 },
    { file = "mystery_5.mp3", duration = 81 },
    { file = "mystery_6.mp3", duration = 60 },
    { file = "mystery_7.mp3", duration = 83 },
    { file = "mystery_8.mp3", duration = 83 },
    { file = "mystery_9.mp3", duration = 82 },
    { file = "mystery_10.mp3", duration = 82 }
}

local demonCursed = {
    { file = "cursedland01.mp3", duration = 54 },
    { file = "cursedland02.mp3", duration = 58 },
    { file = "cursedland03.mp3", duration = 64 }
}

local barrendry = {
    { file = "daybarrendry01.mp3", duration = 64 },
    { file = "daybarrendry02.mp3", duration = 64 },
    { file = "daybarrendry03.mp3", duration = 55 },
    { file = "nightbarrendry01.mp3", duration = 67 },
    { file = "nightbarrendry02.mp3", duration = 40 },
    { file = "nightbarrendry03.mp3", duration = 47 }
}

local cultMusic = {
    { file = "forsakenflame_e.mp3", duration = 77 },
    { file = "mystery_1.mp3", duration = 60 },
    { file = "mystery_5.mp3", duration = 81 },
    { file = "mystery_7.mp3", duration = 83 }
}

local darkshore = {
    { file = "nightwarrior_a.mp3", duration = 88 },
    { file = "nightwarrior_c.mp3", duration = 102 },
    { file = "forsakenflame_f.mp3", duration = 79 },
    { file = "forsakenflame_d.mp3", duration = 154 },
    { file = "forsakenflame_b.mp3", duration = 158 },
    { file = "nightforest01.mp3", duration = 53 },
    { file = "nightforest02.mp3", duration = 42 },
    { file = "nightforest03.mp3", duration = 59 },
    { file = "nightforest04.mp3", duration = 53 }
}

local nagaCave = {
    { file = "fromthedepths_1_a.mp3", duration = 95 },
    { file = "fromthedepths_1_c.mp3", duration = 68 },
    { file = "fromthedepths_1_d.mp3", duration = 89 },
    { file = "fromthedepths_1_e.mp3", duration = 75 }
}

local nagaBlackfathom = {
    { file = "nazjatarrise_a.mp3", duration = 131 },
    { file = "nazjatarrise_c.mp3", duration = 135 },
    { file = "nazjatarrise_d.mp3", duration = 99 },
    { file = "nazjatarrise_e.mp3", duration = 96 },
    { file = "nazjatarrise_g.mp3", duration = 88 },
    { file = "vashjirnagathrone_1.mp3", duration = 43 },
    { file = "vashjirnagathrone_2.mp3", duration = 89 },
    { file = "vashjirnagathrone_4.mp3", duration = 96 },
}

local nagaLand = {
    { file = "naga_1.mp3", duration = 103 },
    { file = "naga_2.mp3", duration = 74 },
    { file = "naga_3.mp3", duration = 149 },
    { file = "naga_5.mp3", duration = 198 },
    { file = "nagaincursion_h.mp3", duration = 154 }
}

local nagaWater = {
    { file = "vashjirnaga_1.mp3", duration = 87 },
    { file = "vashjirnaga_2.mp3", duration = 97 },
    { file = "vashjirnaga_3.mp3", duration = 96 },
    { file = "vashjirnaga_5.mp3", duration = 127 }
}

local balor = {
    { file = "Balor2.mp3", duration = 209 },
    { file = "Balor3.mp3", duration = 161 },
}

local monument = {
    { file = "westplague_a_day1.mp3", duration = 50 },
    { file = "westplague_b_day1.mp3", duration = 50 },
    { file = "westplague_c_day1.mp3", duration = 50 }
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
    { file = "haunted02.mp3", duration = 52 },
}

local voidEvil = {
    { file = "nazmirvoid_a.mp3", duration = 84 },
    { file = "nazmirvoid_c.mp3", duration = 83 },
}

local swampEvil = {
    { file = "nazmirswamp_c.mp3", duration = 102 },
    { file = "nazmirswamp_e.mp3", duration = 97 },
    { file = "bloodsacrifice_a.mp3", duration = 99 }
}

local mysteryEvil = {
    { file = "mystery_3.mp3", duration = 62 },
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

local scarletStronghold = {
    { file = "Human1.mp3", duration = 273 },
    { file = "Human2.mp3", duration = 236 },
    { file = "Human3.mp3", duration = 288 },
    { file = "HumanX1.mp3", duration = 284 }
}

local orcIntro = {
    { file = "orcintro_1.mp3", duration = 11 },
    { file = "orcintro_2.mp3", duration = 17 },
    { file = "orcintro_3.mp3", duration = 11 },
    { file = "orcintro_4.mp3", duration = 13 },
}

local ogre = {
    { file = "orgrimmar02-moment.mp3", duration = 62 },
    { file = "ogre_1.mp3", duration = 75 },
    { file = "ogre_2.mp3", duration = 72 }
}

local ogreIntro = {
    { file = "ogreintro_1.mp3", duration = 28 },
    { file = "ogreintro_2.mp3", duration = 25 },
}

local silithus = {
    { file = "daydesert01.mp3", duration = 65 },
    { file = "daydesert02.mp3", duration = 81 },
    { file = "daydesert03.mp3", duration = 54 },
    { file = "nightdesert01.mp3", duration = 77 },
    { file = "nightdesert02.mp3", duration = 62 },
    { file = "nightdesert03.mp3", duration = 57 },
    { file = "zereth_mortis_barren_a.mp3", duration = 203 },
    { file = "zereth_mortis_barren_b.mp3", duration = 115 },
    { file = "zereth_mortis_barren_c.mp3", duration = 135 },
}

local silithid = {
    { file = "silithus_1.mp3", duration = 99 },
    { file = "silithus_2.mp3", duration = 62 },
    { file = "silithus_3.mp3", duration = 98 },
    { file = "silithus_4.mp3", duration = 111 },
    { file = "silithus_5.mp3", duration = 98 },
    { file = "silithus_6.mp3", duration = 141 },
}

local twilightCalm = {
    { file = "twilights_blade_f.mp3", duration = 77 },
    { file = "twilighthighlands_1.mp3", duration = 68 },
    { file = "twilighthighlands_2.mp3", duration = 67 },
    { file = "twilighthighlands_4.mp3", duration = 78 },
    { file = "twilightshammer_1.mp3", duration = 92 },
    { file = "twilightshammer_2.mp3", duration = 48 },
    { file = "twilightvale_1.mp3", duration = 110 },
    { file = "twilightvale_3.mp3", duration = 80 },
    { file = "twilightvale_5.mp3", duration = 46 },
}

local oldGod = {
    { file = "kthir_a.mp3", duration = 131 },
    { file = "kthir_b.mp3", duration = 131 },
    { file = "crucibleofstorms_a.mp3", duration = 84 },
    { file = "crucibleofstorms_b.mp3", duration = 86 }
}

local undeadStronghold = {
    { file = "cursed_6.mp3", duration = 79 },
    { file = "cursed_7.mp3", duration = 78 },
    { file = "cursed_8.mp3", duration = 79 },
}

local undeadCursed = {
    { file = "cursedland04.mp3", duration = 79 },
    { file = "cursedland05.mp3", duration = 82 },
    { file = "cursedland06.mp3", duration = 74 },
}

local undeadNightelf = {
    { file = "ruinsofauberdine_1.mp3", duration = 100 },
    { file = "ruinsofauberdine_2.mp3", duration = 83 },
    { file = "ruinsofauberdine_3.mp3", duration = 83 },
    { file = "ruinsofauberdine_4.mp3", duration = 77 },
    { file = "ruinsofauberdine_5.mp3", duration = 77 },
}

local blackrockCalm = {
    { file = "burningsteppes_1.mp3", duration = 133 },
    { file = "burningsteppes_2.mp3", duration = 52 },
    { file = "burningsteppes_3.mp3", duration = 80 },
    { file = "burningsteppes_4.mp3", duration = 101 },
    { file = "dayvolcanic01.mp3", duration = 72 },
    { file = "dayvolcanic02.mp3", duration = 87 },
    { file = "nightvolcanic01.mp3", duration = 71 },
    { file = "nightvolcanic02.mp3", duration = 64 },
}

local blackrockDwarf = {
    { file = "hateforgequarry_1.mp3", duration = 152 },
    { file = "hateforgequarry_2.mp3", duration = 159 },
    { file = "burningsteppes_1.mp3", duration = 133 },
    { file = "burningsteppes_2.mp3", duration = 52 },
    { file = "burningsteppes_3.mp3", duration = 80 },
    { file = "burningsteppes_4.mp3", duration = 101 },
    { file = "dayvolcanic01.mp3", duration = 72 },
    { file = "dayvolcanic02.mp3", duration = 87 },
    { file = "nightvolcanic01.mp3", duration = 71 },
    { file = "nightvolcanic02.mp3", duration = 64 },
}

local zuldrak = {
    { file = "zuldrak_intro4.mp3", duration = 125 },
    { file = "zuldrak_intro6.mp3", duration = 125 },
    { file = "zuldrak_day2.mp3", duration = 90 },
    { file = "zuldrak_day3.mp3", duration = 101 },
    { file = "zuldrak_night2.mp3", duration = 90 },
    { file = "zuldrak_night4.mp3", duration = 92 },
}

local trollStronghold = {
    { file = "lapidis_troll_fight.mp3", duration = 76 },
    { file = "ZulGurubVooDoo.mp3", duration = 84 },
    { file = "lapidis_troll_moment.mp3", duration = 167 }
}

local trollVillage = {
    { file = "tavernhorde_1.mp3", duration = 48 },
    { file = "tavernhorde_2.mp3", duration = 39 }
}

local beach = {
    { file = "bloodsail_day3.mp3", duration = 109 },
    { file = "bloodsail_day4.mp3", duration = 83 },
    { file = "tanaris_1.mp3", duration = 87 },
    { file = "tanaris_10.mp3", duration = 84 },
}

local lapidisBeach = {
    { file = "bloodsail_day3.mp3", duration = 109 },
    { file = "bloodsail_day4.mp3", duration = 83 },
    { file = "gillijim_attack.mp3", duration = 78 },
    { file = "gillijim_walking.mp3", duration = 118 },
    { file = "gillijim_moment.mp3", duration = 129 },
    { file = "lapidis_troll_walking.mp3", duration = 118 }
}

local lapidisMain = {
    { file = "gillijim_attack.mp3", duration = 78 },
    { file = "gillijim_walking.mp3", duration = 118 },
    { file = "gillijim_moment.mp3", duration = 129 },
    { file = "lapidis_troll_walking.mp3", duration = 118 },
    { file = "lapidis_troll_fight.mp3", duration = 76 },
    { file = "lapidis_troll_moment.mp3", duration = 168 }
}

local lapidisPruned = {
    { file = "gillijim_attack.mp3", duration = 78 },
    { file = "gillijim_walking.mp3", duration = 118 },
    { file = "gillijim_moment.mp3", duration = 129 },
    { file = "lapidis_troll_walking.mp3", duration = 118 },
}

local bloodsail = {
    { file = "bloodsail_day1.mp3", duration = 95 },
    { file = "bloodsail_day2.mp3", duration = 78 },
    { file = "bloodsail_night2.mp3", duration = 153 },
}

local bloodsailBeach = {
    { file = "bloodsail_day1.mp3", duration = 95 },
    { file = "bloodsail_day2.mp3", duration = 78 },
    { file = "bloodsail_night2.mp3", duration = 153 },
    { file = "bloodsail_day3.mp3", duration = 109 },
    { file = "bloodsail_day4.mp3", duration = 83 },
}

local pirateGloom = {
    { file = "bloodsail_day2.mp3", duration = 78 },
    { file = "bloodsail_night1.mp3", duration = 70 },
    { file = "bloodsail_night2.mp3", duration = 153 },
    { file = "bloodsail_night3.mp3", duration = 95 },
}

local undeadWC3 = {
    { file = "WC3Undead_1.mp3", duration = 304 },
    { file = "WC3Undead_3.mp3", duration = 291 },
    { file = "WC3Undead_4.mp3", duration = 270 },
}

local arathiHighlands = {
    { file = "warfrontsbattle_l.mp3", duration = 90 },
    { file = "warfrontsbattle_p.mp3", duration = 92 },
    { file = "arathihighlands_a_day1.mp3", duration = 67 },
    { file = "arathihighlands_b_day1.mp3", duration = 69 },
    { file = "arathihighlands_c_day1.mp3", duration = 89 },
}

local cataForest = {
    { file = "dayforest01.mp3", duration = 55 },
    { file = "dayforest02.mp3", duration = 72 },
    { file = "dayforest03.mp3", duration = 64 },
    { file = "westfall_2.mp3", duration = 122 },
}

local arathiOrc = {
    { file = "orgrimmar01-moment.mp3", duration = 68 },
    { file = "orgrimmar02-moment.mp3", duration = 62 },
    { file = "warfrontsbattle_o.mp3", duration = 85 },
    { file = "daybarrendry03.mp3", duration = 55 },
}

local arathiHuman = {
    { file = "classicbattle_c.mp3", duration = 102 },
    { file = "classicbattle_d.mp3", duration = 87 },
    { file = "classicbattle_e.mp3", duration = 92 },
    { file = "classicbattle_f.mp3", duration = 102 },
}

local kultiran = {
    { file = "Anchors_fall.mp3", duration = 131 },
    { file = "bloodsail_day4.mp3", duration = 83 },
    { file = "nightjungle03.mp3", duration = 89 },
    { file = "dayjungle02.mp3", duration = 98 },
    { file = "nightjungle02.mp3", duration = 53 }
}

local highelfOutpost = {
    { file = "thalassian4.mp3", duration = 182 },
    { file = "islelightwalk_2.mp3", duration = 119 },
    { file = "silvermoonwalknight_1.mp3", duration = 177 }
}

local nordrassil = {
    { file = "groveoftheancients_1.mp3", duration = 88 },
    { file = "cataclysm_night8.mp3", duration = 111 },
    { file = "nordrassil_1.mp3", duration = 117 }
}

local moonglade = {
    { file = "eye_of_ysera_b.mp3", duration = 147 },
    { file = "eye_of_ysera_d.mp3", duration = 145 },
    { file = "eye_of_ysera_h.mp3", duration = 203 }
}

MusicExpanded_Data.Zones = {

    ["Thalassian Highlands"] = {
        tracks = {},
        subzones = {
            ["Ruins of Nashal'aran"] = {
                intro = {},
                tracks = nagaWater
            },
        }
    },
    ["Mulgore"] = {
        tracks = {},
        subzones = {
            ["Bael'dun Digsite"] = {
                intro = {
                    { file = "silence_warriorterrace.mp3", duration = 53 }
                },
                tracks = dwarfDigsite
            },
        }
    },
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
                intro = {},
                tracks = {
                    { file = "windrunner_h.mp3", duration = 129 },
                    { file = "sylvanas_freewill_h.mp3", duration = 172 }
                }
            }
        }
    },
    ["Stormwind City"] = {
        intro = {},
        tracks = {},
        subzones = {
            ["Cathedral of Light"] = {
                intro = {
                    { file = "silence_sacred.mp3", duration = 18 }
                },
                tracks = {
                    { file = "bellsofdawn_calm.mp3", duration = 94 },
                    { file = "childrenofthelight_calm.mp3", duration = 92 },
                    { file = "lightbringsushope_calm.mp3", duration = 98 }
                }
            }
        }
    },
    ["Lakeshire Town Hall"] = {
        tracks = cataForest
    },
    ["Redridge Mountains"] = {
        tracks = cataForest,
        subzones = {
            ["Redwall Keep"] = {
                tracks = {}
            },
            ["Stonewatch Keep"] = {
                tracks = {}
            },
            ["Stonewatch"] = { -- orc music?
                intro = orcIntro,
                tracks = cataForest,
            },
            ["Stonewatch Keep"] = {
                tracks = cataForest,
            },
            ["Tower of Ilgalar"] = {
                tracks = cataForest,
                indoors = {
                    tracks = {}
                }
            },
            ["Render's Rock"] = {
                tracks = cataForest,
                indoors = {
                    tracks = {}
                }
            },
            ["Rethban Caverns"] = {
                tracks = cataForest,
                indoors = {
                    tracks = {}
                }
            },
            ["Lakeshire"] = {
                tracks = cataForest,
                indoors = {
                    tracks = {}
                }
            }
        }
    },
    ["Silverpine Forest"] = {
        tracks = {},
        subzones = {
            ["The Sepulcher"] = {
                intro = {},
                tracks = haunted
            }
        }
    },
    ["Darkshore"] = {
        tracks = darkshore,
        subzones = {
            ["Auberdine"] = {
                intro = {
                    { file = "silence_angelic01.mp3", duration = 47 }
                },
                tracks = darkshore
            },
            ["Ruins of Mathystra"] = {
                tracks = nagaLand
            },
            ["Grove of the Ancients"] = {
                intro = {
                    { file = "silence_gloomy01.mp3", duration = 36 }
                },
                tracks = darkshore
            },
            ["Ameth'Aran"] = {
                tracks = haunted,
                intro = {}
            },
            ["Tower of Althalaxx"] = {
                intro = {},
                tracks = cultMusic,
                indoors = {
                    intro = {
                        { file = "forsakenflame_a.mp3", duration = 87 },
                    },
                    tracks = cultMusic
                }
            },
            ["The Master's Glaive"] = {
                tracks = cultMusic
            },
            ["Remtravel's Excavation"] = {
                tracks = dwarfDigsite
            },
            ["Cliffspring Falls"] = {
                intro = {},
                tracks = {},
                indoors = {
                    intro = {},
                    tracks = nagaCave
                }
            }
        }
    },
    ["Loch Modan"] = {
        tracks = {},
        subzones = {
            ["Ironband's Excavation Site"] = {
                tracks = dwarfDigsite
            },
            ["The Farstrider Lodge"] = {
                tracks = highelfOutpost
            },
            ["Stonewrought Dam"] = {
                tracks = monument
            },
            ["Valley of Kings"] = {
                tracks = monument,
                indoors = {
                    tracks = {}
                }
            },
            ["Mo'grosh Stronghold"] = {
                tracks = {} -- Keep it, orgrimmar music for alliance
            },
        }
    },
    ["The Barrens"] = {
        tracks = {},
        subzones = {
            ["Bael Modan"] = {
                tracks = dwarfDigsite
            },
            ["Anchor's Edge"] = {
                intro = {
                    { file = "silence_battle03.mp3", duration = 27 - 1 }
                },
                tracks = kultiran
            }
        }
    },
    ["Stonetalon Mountains"] = {
        tracks = {},
        subzones = {
            ["The Talon Den"] = {
                tracks = {},
                indoors = {
                    tracks = {} -- Emerald dream and cataclysm barrow den music?
                }
            },
        }
    },
    ["Ashenvale"] = {
        intro = {},
        tracks = {},
        subzones = {
            ["The Zoram Strand"] = {
                tracks = nagaLand
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
                intro = orcIntro
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
    ["Thousand Needles"] = {
        tracks = {},
        subzones = {
            ["The Rustmaul Dig Site"] = {
                tracks = silithid
            },
        }
    },
    ["Hillsbrad Foothills"] = {
        tracks = {},
        subzones = {
            ["Eastern Strand"] = {
                tracks = nagaLand
            },
        }
    },
    ["Balor"] = {
        tracks = balor,
        subzones = {
            [""] = {
                tracks = balor,
                indoors = {
                    tracks = {}
                }
            },
            ["Stormbreaker Point"] = {
                tracks = {
                    { file = "Balor2.mp3", duration = 209 },
                    { file = "Balor3.mp3", duration = 161 },
                    { file = "daybarrendry03.mp3", duration = 55 }
                },
                indoors = {
                    tracks = {}
                }
            },
            ["Stormwrought Castle"] = {
                intro = {
                    { file = "BalorIntro.mp3", duration = 139 }
                },
                tracks = {}
            },
            ["Bilgerat Compound"] = {
                tracks = pirateGloom
            },
            ["Croaking Plateau"] = {
                tracks = balor,
                indoors = {
                    tracks = mysteryEvil
                }
            },
            ["Windrock Cliffs"] = {
                tracks = balor,
                indoors = {
                    tracks = mysteryEvil
                }
            },
            ["Stormreaver Spire"] = {
                tracks = balor,
                indoors = {
                    tracks = {}
                }
            },
        }
    },
    ["Arathi Highlands"] = {
        tracks = arathiHighlands,
        subzones = {
            ["Boulderfist Hall"] = {
                intro = {},
                tracks = ogre
            },
            ["Boulderfist Outpost"] = { 
                intro = {},
                tracks = {}
            },
            ["Drywhisker Gorge"] = { 
                intro = {},
                tracks = {} 
            },
            ["Witherbark Village"] = { 
                intro = {},
                tracks = {},
            },
            ["Wildtusk Village"] = { 
                intro = {},
                tracks = {}
            },
            ["Ruins of Zul'Rasaz"] = { 
                intro = {},
                tracks = {}
            },
            ["Faldir's Cove"] = { -- Pirate?
                intro = {},
                tracks = {}
            },
            ["The Drowned Reef"] = {
                intro = {},
                tracks = nagaWater
            },
            ["Hammerfall"] = {
                intro = {},
                tracks = arathiOrc
            },
            ["Go'Shek Farm"] = {
                intro = {
                    { file = "silence_battle03.mp3", duration = 27 }
                },
                tracks = arathiOrc
            },
            ["Dabyrie's Farmstead"] = {
                intro = {
                    { file = "silence_battle03.mp3", duration = 27 }
                },
                tracks = arathiHuman
            },
            ["Refuge Pointe"] = {
                intro = {
                    { file = "silence_stormwind03moment.mp3", duration = 69 }
                },
                tracks = arathiHuman
            },
            ["Livingstone Croft"] = {
                intro = {},
                tracks = arathiHuman
            },
            ["Gallant Square"] = {
                intro = {},
                tracks = arathiHuman
            },
            ["The Sanctum"] = { -- Stromgarde trollbane
                intro = {},
                tracks = {}
            },
            ["Stromgarde Keep"] = { -- Do not override
                intro = {
                    { file = "silence_stormwind01moment.mp3", duration = 54 }
                },
                tracks = {}
            },
            ["The Tower of Arathor"] = {
                intro = {},
                tracks = mysteryEvil
            },
            ["Northfold Manor"] = {
                intro = {
                    { file = "silence_gloomy01.mp3", duration = 36 }
                },
                tracks = arathiHighlands
            },
        }
    },
    ["Grim Reaches"] = {
        intro = {
            { file = "silence_Grim_Intro.mp3", duration = 128, cooldown = 3600 }
        },
        tracks = {},
        subzones = {
            ["Groldan's Excavation"] = {
                tracks = darkironDigsite
            },
            ["The Grim Hollow"] = {
                intro = {},
                tracks = swampEvil
            }
        }
    },
    ["Tomb of Ancestors"] = { -- Grim Hollow Crypt
        intro = {},
        tracks = mysteryEvil
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
        tracks = {}, --Barrendry is default. Listed subzones have non-Barrendry music.
        subzones = {
            ["Ghost Walker Post"] = {
                tracks = {}
            },
            ["Sar'theris Strand"] = {
                tracks = {}
            },
            ["Thunder Axe Fortress"] = {
                tracks = {}
            },
            ["Bolgan's Hole"] = {
                tracks = {}
            },
            ["Mannoroc Coven"] = {
                tracks = {}         --demonCursed is already default
            },
            ["Sargeron"] = {
                tracks = {}
            },
            ["Nijel's Point"] = {
                tracks = {}
            },
            ["Shadowbreak Ravine"] = {
                tracks = demonCursed
            },
            ["Ethel Rethor"] = {
                tracks = {}
            },
            ["Shadowprey Village"] = {
                tracks = {}
            },
            ["Scrabblescrew's Camp"] = {
                tracks = {}
            },
            ["Kormek's Hut"] = {
                tracks = {}
            },
            ["Valley of Bones"] = {
                tracks = {
                    { file = "bonewalk_1.mp3", duration = 65 },
                    { file = "bonewalk_2.mp3", duration = 63 },
                    { file = "bonewalk_3.mp3", duration = 56 },
                    { file = "bonewalk_4.mp3", duration = 189 },
                }
            },
            ["Ranazjar Isle"] = {
                intro = {},
                tracks = nagaLand
            },
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
    ["Stranglethorn Vale"] = {
        tracks = {},
        subzones = {
            ["The Vile Reef"] = {
                intro = {},
                tracks = {}
            },
            ["Southern Savage Coast"] = {
                intro = {},
                tracks = {}
            },
            ["Bloodsail Compound"] = {
                intro = {},
                tracks = bloodsailBeach
            },
            ["Wild Shore"] = {
                intro = {},
                tracks = bloodsailBeach
            },
            ["Ruins of Aboraz"] = {
                tracks = undeadWC3
            },
            ["Ruins of Jubuwal"] = {
                tracks = undeadWC3
            },
            ["Nek'mani Wellspring"] = {
                tracks = nagaLand
            },
            ["Yojamba Isle"] = {
                intro = {},
                tracks = trollStronghold
            },
        }
    },
    ["The Hinterlands"] = {
        tracks = cataForest,
        subzones = {
            ["Aerie Peak"] = {
                intro = {
                    { file = "aeriepeak.mp3", duration = 45 }
                },
                tracks = cataForest,
                indoors = {
                    tracks = {}
                }
            },
            ["Wildhammer Keep"] = {
                tracks = cataForest,
                indoors = {
                    tracks = {}
                }
            },
            ["Revantusk Village"] = {
                tracks = trollVillage
            },
            ["Shadra'Alor"] = {
                tracks = {}
            },
            ["Jintha'Alor"] = {
                tracks = {}
            },
            ["The Altar of Zul"] = {
                tracks = {}
            },
            ["Seradane"] = {
                tracks = {}
            },
            ["Skulk Rock"] = {
                tracks = cataForest,
                indoors = {
                    tracks = {}
                }
            },
            ["Quel'Danil Lodge"] = {
                tracks = highelfOutpost,
            },
        }
    },
    ["Gilneas"] = {
        tracks = {},
        subzones = {
            ["Brol'ok Mound"] = {
                intro = {},
                tracks = ogre
            },
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
            },
            ["Ruins of Solarsal"] = {
                tracks = nagaLand
            },
            ["The Writhing Deep"] = {
                tracks = silithid
            },
        }
    },
    ["Tanaris"] = {
        tracks = {},
        subzones = {
            ["The Noxious Lair"] = {
                tracks = silithid
            },
            ["The Gaping Chasm"] = {
                tracks = silithid
            },
            ["Southbreak Shore"] = {
                tracks = beach
            },
            ["Land's End Beach"] = {
                tracks = beach
            },
            ["South Seas"] = {
                tracks = beach
            },
            ["Wavestrider Beach"] = {
                tracks = beach
            },
            ["Zalashji's Den"] = {
                tracks = beach
            },
            ["Lost Rigger Cove"] = {
                tracks = bloodsailBeach
            },
        }
    },
    ["Searing Gorge"] = {
        tracks = blackrockCalm,
        subzones = {
            ["Grimesilt Dig Site"] = {
                tracks = darkironDigsite
            },
            ["Firewatch Ridge"] = {
                tracks = twilightCalm
            }
        }
    },
    ["Blackrock Mountain"] = {
        intro = {},
        tracks = blackrockCalm,
        subzones = {
            ["The Grinding Quarry"] = {
                tracks = {}
            },
            ["The Masonary"] = {
                tracks = {}
            }
        }
    },
    ["Burning Steppes"] = {
        tracks = blackrockCalm,
        subzones = {
            ["Ruins of Thaurissan"] = {
                tracks = {
                    { file = "darkironforge_2.mp3", duration = 66 },
                    { file = "darkironforge_3.mp3", duration = 54 },
                    { file = "darkironforge_4.mp3", duration = 102 },
                    { file = "darkironforge_5.mp3", duration = 45 }
                }
            },
            ["Blackrock Stronghold"] = {
                intro = {},
                tracks = {}
            },
            ["Karfang Hold"] = {
                intro = {},
                tracks = {}
            },
            ["Dreadmaul Rock"] = {
                intro = {},
                tracks = {}
            }
        }
    },
    ["Blasted Lands"] = {
        intro = {},
        tracks = {},
        subzones = {
            ["Dreadmaul Post"] = {
                intro = {},
                tracks = ogre
            },
            ["The Dark Portal"] = {
                intro = {
                    { file = "he_stairsintro.mp3", duration = 18 }
                },
                tracks = {}
            }
        }
    },
    ["Lapidis Isle"] = {
        tracks = lapidisPruned,
        subzones = {
            [""] = {
                intro = {},
                tracks = lapidisPruned,
                indoors = {
                    tracks = {}
                }
            },
            ["Bright Coast"] = {
                intro = {},
                tracks = bloodsailBeach
            },
            ["Crown Island"] = {
                intro = {},
                tracks = lapidisBeach
            },
            ["Shank's Reef"] = {
                intro = {},
                tracks = lapidisBeach
            },
            ["Zul'Hazu"] = {
                intro = {},
                tracks = trollStronghold
            },
            ["Gor'dosh Heights"] = {
                intro = {},
                tracks = ogre
            },
        }
    },
    ["Gillijim's Isle"] = {
        tracks = lapidisPruned,
        subzones = {
            ["The Southsea Sandbar"] = {
                intro = {},
                tracks = bloodsailBeach
            },
            ["Distillery Island"] = {
                tracks = bloodsailBeach
            },
            ["Kazon Island"] = {
                tracks = lapidisBeach,
                indoors = {
                    tracks = {}
                }
            },
            ["The Jade Mine"] = {
                tracks = lapidisPruned,
                indoors = {
                    tracks = {}
                }
            },
            ["Deepneck Cove"] = {
                tracks = lapidisBeach,
                indoors = {
                    tracks = undeadCursed
                }
            },
            ["Faelon's Folly"] = {
                intro = {},
                tracks = haunted
            },
            ["The Silver Coast"] = {
                intro = {},
                tracks = lapidisBeach
            },
            ["The Silver Sandbar"] = {
                intro = {},
                tracks = lapidisBeach
            },
            ["Gillijim Strand"] = {
                intro = {},
                tracks = lapidisBeach
            },
            ["Deeptide Sanctum"] = {
                tracks = nagaLand,
                indoors = {
                    tracks = {}
                }
            },
            ["The Broken Reef"] = {
                intro = {},
                tracks = nagaLand
            },
            ["Zul'Razar"] = {
                intro = {},
                tracks = trollStronghold
            },
            ["Maul'ogg Refuge"] = {
                tracks = {
                    { file = "orgrimmar02-moment.mp3", duration = 62 },
                    { file = "daybarrendry03.mp3", duration = 55 },
                },
                indoors = {
                    tracks = undeadCursed
                }
            },
            [""] = {
                tracks = lapidisPruned,
                indoors = {
                    tracks = undeadCursed
                }
            },
        }
    },
    ["Azshara"] = {
        tracks = {},
        subzones = {
            ["Ruins of Eldarath "] = {
                tracks = nagaLand
            },
            ["Temple of Zin-Malor"] = {
                tracks = nagaLand
            },
            ["Shadowsong Shrine"] = {
                tracks = highborne,
            },
            ["The Ruined Reaches"] = {
                tracks = nagaLand
            },
            ["Rethress Sanctum"] = {
                intro = {
                    { file = "vashjirnagathrone_1.mp3", duration = 43 }
                },
                tracks = {}
            },
            ["Southridge Beach"] = {
                tracks = nagaLand
            },
            ["The Shattered Strand"] = {
                tracks = {}
            },
            ["Bay of Storms"] = {
                tracks = {}
            },
            ["Hetaera's Clutch"] = {
                tracks = {}
            },
            ["Thalassian Base Camp"] = {
                tracks = {} -- Sunfury belf music
            },
        }
    },
    ["Un'Goro Crater"] = {
        tracks = {},
        subzones = {
            ["The Slithering Scar"] = {
                tracks = silithid
            },
        }
    },
    ["Moonwhisper Coast"] = {
        tracks = {},
        subzones = {
            ["Ruins of Nendis"] = {
                tracks = nagaLand
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
    ["Crypt"] = { -- Sorrow Hill Crypt, used in Western Plaguelands
        tracks = haunted,
        subzones = {}
    },
    ["Eastern Plaguelands"] = {
        tracks = {},
        subzones = {
            ["Light's Hope Chapel"] = {
                intro = {},
                tracks = {
                    { file = "arathi_memorial_h.mp3", duration = 279 }
                }
            },
            ["Tyr's Hand"] = {
                intro = {},
                tracks = scarletStronghold
            },
            ["Plaguewood"] = {
                intro = undeadStronghold,
                tracks = {}
            },
            ["The Noxious Glade"] = {
                intro = undeadStronghold,
                tracks = {}
            },
            ["The Fungal Vale"] = {
                intro = undeadStronghold,
                tracks = {}
            },
            ["Forlorn Summit"] = {
                intro = undeadStronghold,
                tracks = {}
            },
            ["Zul'Mashar"] = {
                intro = {},
                tracks = zuldrak
            },
            ["Mazra'Alor"] = {
                intro = {},
                tracks = zuldrak
            },
            ["Quel'Lithien Lodge"] = {
                tracks = {} -- Ghostlands music? Default is nelf darnassus music
            }
        }
    },
    ["Tyr's Hand Abbey"] = {
        tracks = scarletStronghold,
        subzones = {}
    },
    ["Scarlet Enclave"] = {
        tracks = scarletStronghold,
        subzones = {
            ["Gloom Hill"] = {
                intro = {},
                tracks = {}
            },
            ["Tyr's Hand"] = {
                intro = {},
                tracks = scarletStronghold
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
    ["Silithus"] = {
        tracks = silithus,
        subzones = {
            ["Cenarion Hold"] = {
                intro = {
                    { file = "ahnqirajintro1.mp3", duration = 143 },
                },
                tracks = silithus
            },
            ["Hive'Ashi"] = {
                intro = {},
                tracks = silithid
            },
            ["Hive'Zora"] = {
                intro = {},
                tracks = silithid
            },
            ["Hive'Regal"] = {
                intro = {},
                tracks = silithid
            },
            ["The Crystal Vale"] = {
                intro = {},
                tracks = silithus -- Cata elemental, deathwing music?
            },
            ["Ravaged Twilight Camp"] = {
                intro = {},
                tracks = silithus -- Cata elemental, deathwing music?
            },
            ["Southwind Village"] = {
                intro = {
                    { file = "darnassusintro_h.mp3", duration = 52 },
                },
                tracks = undeadNightelf
            },
            ["Twilight's Run"] = {
                intro = {},
                tracks = twilightCalm
            },
            ["Staghelm Point"] = {
                intro = {},
                tracks = twilightCalm
            },
            ["Twilight Outpost"] = {
                intro = {},
                tracks = twilightCalm
            },
            ["Twilight Base Camp"] = {
                intro = {},
                tracks = twilightCalm
            },
        }
    },
    ["Hyjal"] = {
        tracks = {},
        subzones = {
            [""] = {
                intro = {
                    --{ file = "mus_41_faeriedragon_ue01.mp3", duration = 132 },
                }
            },
            ["Nordanaar"] = {
                tracks = nordrassil
            },
            ["Nordrassil Glade"] = {
                tracks = nordrassil
            },
            ["Bleakhollow Crater"] = {
                tracks = demonCursed
            },
            ["The Ruins of Telennas"] = {
                tracks = demonCursed
            },
            ["Darkhollow Pass"] = {
                tracks = demonCursed
            },
            ["Zul'Hatha"] = {
                tracks = trollStronghold
            },
        }
    },
    ["Moonglade"] = {
        intro = {
            { file = "silence_magic01-moment.mp3", duration = 63 }
        },
        tracks = moonglade,
        subzones = {
            ["Stormrage Barrow Dens"] = {
                tracks = moonglade,
                indoors = {
                    tracks = {}
                }
            }
        }
    },

    --============================================================  Dungeons  ============================================================

    ["Blackfathom Deeps"] = {
        intro = {},
        tracks = nagaBlackfathom,
        subzones = { 
            [""] = {
                intro = {},
                tracks = nagaBlackfathom
            },
            ["The Pool of Ask'ar"] = {
                intro = {
                    { file = "warriorterrace.mp3", duration = 53 - 1 }
                },
                tracks = nagaBlackfathom
            },
            ["The Forgotten Pool"] = {
                intro = {},
                tracks = nagaCave
            },
            ["Moonshrine Ruins"] = {
                intro = {},
                tracks = twilightCalm
            },
            ["Moonshrine Sanctum"] = { -- Twilight heavy music?
                intro = {
                    { file = "battle03.mp3", duration = 27 - 1 }
                },
                tracks = twilightCalm
            },
            ["Aku'mai's Lair"] = { -- Shrine of the storms music and Kthir, near Akumai
                intro = {},
                tracks = oldGod
            },
        }
    },
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
        tracks = blackrockDwarf,
        subzones = {
            [""] = {
                intro = {
                    { file = "hateforgequarry_1.mp3", duration = 152, cooldown = 1800 }
                },
                tracks = {},
            },
            ["Shadowforge City"] = {
                tracks = blackrockDwarf,
                intro = {
                    { file = "darkironforge_1.mp3", duration = 154, cooldown = 1800 },
                }
            },
            ["The Molten Bridge"] = {
                tracks = {},
                intro = {
                    --{ file = "darkironforge_1.mp3", duration = 154 }, firebreach
                }
            },
            ["The Imperial Seat"] = {
                tracks = {},
                intro = {}
            }
        }
    },
    ["Stratholme"] = {
        intro = {},
        tracks = {},
        subzones = {
            ["Crusaders' Square"] = {
                intro = scarletIntro,
                tracks = scarletMonastery
            },
            ["The Scarlet Bastion"] = {
                intro = {},
                tracks = scarletMonastery
            },
            ["The Hall of Lights"] = {
                intro = { 
                    { file = "battle04.mp3", duration = 36 }
                },
                tracks = scarletMonastery
            },
            ["The Hoard"] = {
                intro = {
                    { file = "battle03.mp3", duration = 27 }
                },
                tracks = scarletMonastery
            },
            ["The Crimson Throne"] = {
                intro = {},
                tracks = {
                    { file = "eh_assault_6.mp3", duration = 93 },
                    { file = "eh_assault_7.mp3", duration = 95 }
                },
            },
            ["The Slaughter House"] = {
                intro = {},
                tracks = {
                    { file = "eh_assault_1.mp3", duration = 64 },
                    { file = "eh_assault_3.mp3", duration = 65 },
                    { file = "eh_assault_4.mp3", duration = 67 }
                },
            },
        },
    },
    ["Scholomance"] = {
        intro = {},
        tracks = scholomance,
        subzones = {
            [""] = {
                intro = {
                    { file = "haunted02.mp3", duration = 52 , cooldown = 3600},
                },
                tracks = scholomance
            },
            ["The Reliquary"] = {
                intro = {
                    { file = "shadow_death_h.mp3", duration = 154, cooldown = 1800 }
                },
                tracks = scholomance
            }
        }
    },
}
