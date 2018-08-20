# Discord!
[Discord](https://discord.gg/rejUw5b)  <----- Don't miss this link! A lot of cool stuff on the discord, screenshots etc. You can even suggest stuff to add and have a cool chat with me : )
# Pay me :D
If you like my work, you can donate
`Paypal:` stefan551@o2.pl
I will order a pizza and think about you while eating ;)
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
## TO DO:
- Level cap raised to 60.
- Penalty to resistances/AC on Inferno difficulty.
- Fixing possible overflows in monster AC/to hit/etc. on difficulties above normal.

![Too much text? Here's a cat to keep you going](https://laughingsquid.com/wp-content/uploads/2013/05/57136754_o1.jpg "Can has kitten")

# Installing
- Get `infernity.exe` [here](https://github.com/qndel/Infernity/blob/master/Source/Infernity.exe)
- Get `infernity_config.ini`  [here](https://github.com/qndel/Infernity/blob/master/Source/infernity_config.ini)
- Create a file named `enable_inferno` in your diablo folder.
- Launch `Infernity.exe` in your Diablo folder to play. The following files from the original game patched to 1.09 need to be present: `DIABDAT.MPQ`, `DiabloUI.dll`, `SmackW32.dll`, `Standard.snp`, and `Storm.dll`.
- Additionally, Strange Bytes' [DirectDraw patch](http://www.strangebytes.com/index.php/projects/1-diablo-1-windows-7-vista-patch) is recommended to help fix compatibility issues and run the game in windowed mode.
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

# Screenshots
Some screenshots from the mod (You can find more screenshots on discord):
![Screenshot 1: Inferno activated](https://cdn.discordapp.com/attachments/474387916043321364/474565168777658369/unknown.png "Inferno activated")

![Screenshot 2: Three affixes](https://cdn.discordapp.com/attachments/474387916043321364/474426181106794516/unknown.png "Three affixes")

![Screenshot 3: Shrines revealed](https://media.discordapp.net/attachments/474387916043321364/477974757116215306/unknown.png?width=460&height=936 "Shrines revealed!")

# Credits
## https://github.com/diasurgical/devilution - for the code
## RadTang - for the name
## GainTrain - for the idea

# Legal
This software is being released to the Public Domain. No assets of Diablo are being provided. You must own a copy of Diablo and have access to the assets beforehand in order to use this software.

Battle.net(R) - Copyright (C) 1996 Blizzard Entertainment, Inc. All rights reserved. Battle.net and Blizzard Entertainment are trademarks or registered trademarks of Blizzard Entertainment, Inc. in the U.S. and/or other countries.

Diablo(R) - Copyright (C) 1996 Blizzard Entertainment, Inc. All rights reserved. Diablo and Blizzard Entertainment are trademarks or registered trademarks of Blizzard Entertainment, Inc. in the U.S. and/or other countries.

This software is in no way associated with or endorsed by Blizzard Entertainment(R).
