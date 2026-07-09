# MusicExpanded

Extends the default music system with additional tracks for specific zones and subzones while preserving the original game feel. Adds music from later expansions to certain zones and events. The goal is to increase immersion without straying too far from the vanilla feel, that's why I aim to mostly add music to the pool, not replace it.

## Features

- Custom music player in the background that emulates the music behavior of the base game, with the exception of indoors/outdoors detection. NOTE: The addon does not interact with the Loop Music option in the Interface settings, and it will function as normal in any area without custom music.
- No UI, fully background addon with basic slash command options /mex


## Video Showcase
https://www.youtube.com/playlist?list=PLbRGZ0tPcTx0


## Modified Zones

<details>
<summary><strong>Tirisfal Glades </strong></summary>

- **Deathknell** — expanded with ghostly tracks
- **Agamand Mills** — expanded with ghostly tracks
- **Agamand Family Crypt** — expanded with ghostly tracks
- **Brill** — expanded with ghostly tracks
- **Balnir Farmstead** — expanded with ghostly tracks
- **Whispering Gardens** — Intro music for Scarlet Monastery outskirts

</details>

<details>
<summary><strong>Undercity </strong></summary>

- **Royal Quarter** - Sylvanas music

</details>

<details>
<summary><strong>Silverpine Forest </strong></summary>

- **The Sepulcher** - ghostly tracks

</details>


<details>
<summary><strong>Darkshore </strong></summary>

- **Main zone** (most of Darkshore) — expanded with "Night Warrior" & "Forsaken Flame" tracks
- **Tower of Althalaxx** & **The Master's Glaive** — "Mystery" tracks and more intense "Forsaken Flame" variants
- **Cliffspring Falls** — unique naga cave music ("From The Depths")
- **Remtravel's Excavation** - dwarf digsite music (Northrend dwarf/iron dwarf)
- **Ameth'Aran** - ghostly music

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
<summary><strong>Duskwood </strong></summary>

- **Tranquil Gardens Cemetery** - ghostly tracks
- **Raven Hill Cemetery** - ghostly tracks
- **Forlorn Rowe** - added haunted02 spooky intro

</details>

<details>
<summary><strong>Wetlands </strong></summary>

- **Whelgar's Excavation Site** - dwarf digsite music
- **Dun Algaz** - Event music for Dragonmaw Orcs
- **Angerfang Encampment** - Intro music for Dragonmaw Orcs
</details>

<details>
<summary><strong>Badlands </strong></summary>
  
- **Hammertoe's Digsite** - Dark iron digsite music (Northrend dwarf/iron dwarf DARK variant)
- **Angor Digsite** -       Dark iron digsite music 
- **The Maker's Terrace** - Dark iron digsite music 

</details>

<details>
<summary><strong>Desolace </strong></summary>
  
- **Valley of Bones** - Terokkar Bone Wastes music

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
<summary><strong>Western Plaguelands </strong></summary>
  
- **Ruins of Andorhal** - ghostly tracks and intro track haunted02
- **Uther's Tomb** - ghostly tracks

</details>

<details>
<summary><strong>Eastern Plaguelands </strong></summary>
  
- **Light's Hope Chapel** - arathi memorial music

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
  
- **Main zone** (Scarlet Monastery) - added cataclysm SM music
- **Forlorn Cloister** (Graveyard) - Added shadow_death_h as Intro Music, and ghostly tracks as zone music
- **Scarlet Prison** (Graveyard) - changed from ghostly to mystery_zone tracks.
- **Athenaeum** (Library) - moved battle04 music from Arcanist Doan's chamber to Intro music for the subzone
- **Crusader's Chapel** (Cathedral) - sacred02 intro music
- Added intro music to Cathedral and Library

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
<summary><strong>Stratholme </strong></summary>
  
- **Crusaders' Square** - Added cata SM music, and intro music.
- **The Scarlet Bastion** - Added cata SM music.
- **The Hall of Lights** - Added cata SM music. Moved battle03 boss room music to main hall intro music.
- **The Hoard** - Moved battle04 boss room music to main hall intro music.
- **The Crimson Throne** - Added ebon hold assault music. 

</details>

<details>
<summary><strong>Scholomance </strong></summary>
  
- **Main Zone** - Added ghostly and cata scholomance music. Added intro music; haunted02
- **The Reliquary** - Added intro music; shadow_death_h

</details>

<details>
<summary><strong>Upper Blackrock Spire </strong></summary>
  
- **Blackrock Stadium Gauntlet Event** (Rend Blackhand) - Added protectthethrone_h1/2/3 to various stages of the event
</details>





## TODO

- Test 1.18.1 turtle wow content (there are "ghost" changes to these zones but currently untested)
- Add a log for music played {zone, subzone, track} displayable ingame through a button or chat command. Maybe a toggle for seeing "currently playing:X" messages.
