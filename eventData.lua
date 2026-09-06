MusicExpanded_Events = MusicExpanded_Events or {}

MusicExpanded_Events["Blackrock Stadium"] = {
    ["Let not even a drop of their blood remain"] = {
        { file = "protectthethrone_h1.mp3", duration = 67 },
        { file = "protectthethrone_h2.mp3", duration = 98, delay = 230 }
    },
    ["The Warchief shall make quick work of you, mortals."] = {
        { file = "protectthethrone_h3.mp3", duration = 92, delay = 32 }
    } 
}

orcIntro = {
    { file = "orcintro_1.mp3", duration = 11 },
    { file = "orcintro_2.mp3", duration = 17 },
    { file = "orcintro_3.mp3", duration = 11 },
    { file = "orcintro_4.mp3", duration = 13 },
}

MusicExpanded_Events["Dun Algaz"] = {
    ["Long live the Dragonmaw!"] = orcIntro,
    ["For the Dragonmaw!"] = orcIntro,
    ["Your bones will break under my boot"] = orcIntro
}