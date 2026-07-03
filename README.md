# MusicExpanded

Extends the default music system with additional tracks for specific zones and subzones while preserving the original game feel. Adds music from later expansions to certain zones and events. The goal is to increase immersion without straying too far from the vanilla feel, that's why I aim to mostly add music to the pool, not replace it.

## Features

- Custom music player in the background that emulates the music behavior of the base game, with the exception of indoors/outdoors detection. NOTE: The addon does not interact with the Loop Music option in the Interface settings, and it will function as normal in any area without custom music.
- No UI, fully background addon with basic slash command options /mex


## Video Showcase
https://www.youtube.com/playlist?list=PLbRGZ0tPcTx0


## Modified Zones

<details>
<summary><strong>Darkshore </strong></summary>

- **Main zone** (most of Darkshore) — expanded with "Night Warrior" & "Forsaken Flame" tracks
- **Tower of Althalaxx** & **The Master's Glaive** — "Mystery" tracks and more intense "Forsaken Flame" variants
- **Cliffspring Falls** — unique naga cave music ("From The Depths")
- **Remtravel's Excavation** - dwarf digsite music (Northrend dwarf/iron dwarf)

**Excluded subzones (uses default game music):**
- **Auberdine**
- **Ruins of Mathystra**
- **Grove of the Ancients**

</details>

<details>
<summary><strong>Loch Modan </strong></summary>

- **Ironband's Excavation Site** - dwarf digsite music
</details>

<details>
<summary><strong>The Barrens </strong></summary>

- **Bael Modan** - dwarf digsite music
</details>

<details>
<summary><strong>Wetlands </strong></summary>

- **Whelgar's Excavation Site** - dwarf digsite music
</details>

<details>
<summary><strong>Badlands </strong></summary>
  
- **Hammertoe's Digsite** - Dark iron digsite music (Northrend dwarf/iron dwarf DARK variant)
- **Angor Digsite** -       Dark iron digsite music 
- **The Maker's Terrace** - Dark iron digsite music 

</details>

<details>
<summary><strong>Feralas </strong></summary>

- **Lariss Pavilion** - highborne music
- **Shalzaru's Lair** - unique naga cave music ("From The Depths")
</details>

<details>
<summary><strong>Searing Gorge </strong></summary>
  
- **Grimesilt Dig Site** - Dark iron digsite music (Northrend dwarf/iron dwarf DARK variant)

</details>

<details>
<summary><strong>Burning Steppes </strong></summary>
  
- **Ruins of Thaurissan** - Dark iron city music (darkironforge_2-5)

</details>

<details>
<summary><strong>Azshara </strong></summary>

- **Temple of Zin-Malor** - highborne music
</details>

<details>
<summary><strong>Winterspring </strong></summary>

- **The Ruins of Kel'Theril** - highborne music
</details>

## Modified Dungeons

<details>
<summary><strong>Scarlet Monastery </strong></summary>
  
- **Forlorn Cloister** (Graveyard) - Added shadow_death_h as Intro Music for SM Grave courtyard
</details>

<details>
<summary><strong>Uldaman </strong></summary>
  
- **Hall of the Keepers** - Added Halls of lightning music (ul_lightningintro)
- **Map Chamber** - Added Halls of lightning music (ul_lightningwalkfull)
- **Temple Hall** - Added Halls of lightning music (ul_lightningwalkfull)
- **Echomok Cavern** - Added Halls of lightning music (ul_lightningbattlewalk)
- **Hall of the Crafters** - Added Legion titan music (preserver_h1)
- **Khaz'goroth's Seat** - Added Legion titan music (preserver_h2/3end)

</details>


<details>
<summary><strong>Blackrock Depths </strong></summary>
  
- **Shadowforge City** - Added the main version of darkironforge_1
</details>

<details>
<summary><strong>Upper Blackrock Spire </strong></summary>
  
- **Blackrock Stadium Gauntlet Event** (Rend Blackhand) - Added protectthethrone_h1/2/3 to various stages of the event
</details>





## TODO
- Add music to dark iron digsites (including Turtle custom zones)
- Redo music in Tower of Althalaxx either through Intro Music or Event Music functionality.
- Add a log for music played {zone, subzone, track} displayable ingame through a button or chat command - SavedVariables.
