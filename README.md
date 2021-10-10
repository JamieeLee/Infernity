
# Features
## DONE:
- A new difficulty called Inferno.
- Because the diabloui.dll hasn't been reverse-engineered, I've decided to use a trick to replace hell difficulty with a new one, to do it, create a file named `enable_inferno` in your Diablo folder and choose "hell" difficulty in the difficulty selection menu.     
- Special items with 3 affixes can drop there. 
- The third affix will only drop if the item has a suffix and a prefix. Additional affix doesn't follow the regular prefix/suffix rules, which mean that combinations that weren't possible before can occur. 
- Compatibility with vanilla, but sadly in one direction = you can move your vanilla character to infernity, but if you move character from infernity to vanilla, items will morph like crazy (This is because inferno items have increased level to enable them to get the "dead" affixes (the ones you could only get from Wirt)
- Running in town/dungeon 
- Highlighting enemies in combat 
- A config to enable or disable stuff
- Fully shared xp - you don't need to poke or even be close! Seems in vanilla diablo the xp would be divided between the killers. In Infernity everyone gets 100% xp, so splitting to clear faster might be a good idea ;)
- Black death doesn't permanently decrease health anymore!
- Added xp bar
- Minimap is shared between players
- Gold pile max size increased to 60k (Can't be more because of variable type - at least for now)
- Shop selection stays after buying item (it used to reset to first top item before)
- Shift clicking potions in inventory adds them to belt
- Remove/change permanent negative shrines (In general, things permanently damaging your character)
- Show shrine effect in the description
- Expand inventory (4tabs, switch by clicking on the icon or shift+1/2/3/4)
- Make the map revealed by the shrine have a different color
- Add monster resistances/immunities on the health bar
- Show other players on minimap
- Items won't drop on death
- Fix friendly fire
- Diablo is a unique monster and drops items - more on higher difficulties
- Showing current/max on health/mana orbs
- Alternate weapon slot + switching between weapons
- Fixed duping
- HD
- Stash (You can only use it in town, you can quickswitch to it using Shift+5)
- TrueColor support
- Sprite limit raised to 10k
- Toggle caps lock to emulate holding shift
- Hotkeys increased from 4 to 12, can now be saved
- Loot filters
## TO DO:
- Level cap raised to 60.
- Penalty to resistances/AC on Inferno difficulty.
- Fixing possible overflows in monster AC/to hit/etc. on difficulties above normal.

![Too much text? Here's a cat to keep you going](https://laughingsquid.com/wp-content/uploads/2013/05/57136754_o1.jpg "Can has kitten")
# Installing
- Get `Infernity.zip` [here](https://github.com/qndel/Infernity/raw/master/Infernity.zip)
- Unpack it in your Diablo folder
- Launch `Infernity.exe` to play. The following files from the original game patched to 1.09 need to be present: `DIABDAT.MPQ`, `DiabloUI.dll`, `SmackW32.dll`, `Standard.snp`, and `Storm.dll`.
- ddraw.dll used to be optional, but after making Infernity HD, it's required. It's a modified version which allows resolutions up to 2560x1440. The ddraw.dll menu can be toggled on/off with '~' or 'scroll lock'.
 # Changelog
- 1.00 - Added Inferno difficulty and 3 affix items.
- 1.01 - Added health bar (can turn on/off in config)
- 1.02 - Added alt highlighting items
- 1.03 - Added running in town/dungeon and highlighting monsters in combat (something like infravision but you have to aggro monster to see it )(can turn on/off in config)
- 1.04 - Restored compatibility with vanilla, changed affix generation system (IMPORTANT! All items from previous versions will go crazy :( But the item system is good now). Compatibility is vanilla->infernity only. At least it means you can start playing infernity with your items from vanilla :)
- 1.05 - Added experience bar
- 1.06 - Map shared between players, Uniques from Inferno will have an additional affix as well! They are called `Superuniques`
- 1.07 - Gold pile max size increased from 5k to 1m, shift+clicking a scroll/potion in inventory will add it to belt, shop selection stays after buying, some fixes for spells
- 1.08 - Shrines display their effect in description (goat shrines and cauldron't still don't), removed permanent mana decrease from shrines = we got rid of all stuff that could permanently damage the character! So it's safe to use goat shrines/cauldrons
- 1.09 - The most important update so far, adds 4 tabs to inventory. You can switch by clicking or shift+1/2/3/4
- 1.10 - fixed all bugs related to inventory/multiplayer - this will allow to expand the player  structure in the future (can add more stuff)
- 1.11 - motion interpolation for highlighted items, clicking highlighted name will walk to item/pick it up if nearby
- 1.12 - added alternate weapon slot and switching between weapons using 'v' hotkey
- 1.13 - fixes all issues with loading in single player, butcher should be in multiplayer too, portals shouldn't break in multiplayer
- 1.14 - HD! Best thing ever!
- 1.15 - STASH!
- 1.16 - True Color support (RGB)
- 1.17 - Sprite limit raised to 10k! (Firewall/chainlightning/monster spells should always work)
- 1.18 - Hotkeys F1-F12, they save in multiplayer
- 1.19 - Loot Filters
- 1.20 - Spell power! Make mage normal again.
- 1.21 - Spell cooldowns!
- 1.22 - Multiplayer fixed, Stash size reduced from 100 to 25, items in tabs above 25 will be lost!

# Screenshots
Some screenshots from the mod (You can find more screenshots on discord):
![Screenshot 1: Rare items](https://i.imgur.com/bMdCWf1.jpg "rare item")
![Screenshot 2: Superunique items](https://i.imgur.com/ALDfiEH.jpg "superunique item")
![Screenshot 3: Stash](https://i.imgur.com/jMJBhRp.png "stash")
![Screenshot 4: Swapping weapons](https://i.imgur.com/mEzQpyF.jpg "swapping weapons")
![Screenshot 5: Health bar](https://i.imgur.com/4y2DdyX.jpg "health bar and highlighing in combat")
![Screenshot 6: Highlighting items](https://i.imgur.com/xQrMDFA.jpg "highlighting items with alt")
![Screenshot 7: Loot filters](https://i.imgur.com/cPSnknD.jpg "loot filters to customize names and colors")



# Credits
## https://github.com/diasurgical/devilution - for the code
## https://github.com/strangebytes/diablo-ddrawwrapper/ - for wrapper
## https://github.com/microsoft/detours - for stuff to compile wrapper
## https://github.com/vit-vit/ctpl - for thread pool library
## https://www.lua.org/ - for Lua
## RadTang - for the name
## GainTrain - for the idea

# Legal
This software is being released to the Public Domain. No assets of Diablo are being provided. You must own a copy of Diablo and have access to the assets beforehand in order to use this software.

Battle.net(R) - Copyright (C) 1996 Blizzard Entertainment, Inc. All rights reserved. Battle.net and Blizzard Entertainment are trademarks or registered trademarks of Blizzard Entertainment, Inc. in the U.S. and/or other countries.

Diablo(R) - Copyright (C) 1996 Blizzard Entertainment, Inc. All rights reserved. Diablo and Blizzard Entertainment are trademarks or registered trademarks of Blizzard Entertainment, Inc. in the U.S. and/or other countries.

This software is in no way associated with or endorsed by Blizzard Entertainment(R).
