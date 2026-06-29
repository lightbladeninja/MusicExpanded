MusicExpanded_Events = MusicExpanded_Events or {}

MusicExpanded_Events["Blackrock Stadium"] = {
    ["Chromatic Dragonspawn"] = {
        file     = "protectthethrone_h1.mp3",
        weight   = 5,
        duration = 67
    },
    ["Blackhand Dragon Handler"] = {
        file     = "protectthethrone_h2.mp3",
        weight   = 5,
        duration = 98
    },
    ["Gyth"] = {
        file     = "protectthethrone_h3.mp3",
        weight   = 5,
        duration = 92
    }
}

MusicExpanded_Events["Ragnaros' Lair"] = {
    zone = "Molten Core",
    subzone = "The Molten Span",

    detect = function()
        -- We'll fill this in when you're ready
        return nil
    end,

    states = {
        -- Example future states
        -- ragnaros_spawn = { ... }
    }
}