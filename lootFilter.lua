 --[[
By Qndel
Explaining parameters passed to function:
playerName = string containing player's name
playerClass = number indicating player's class - values listed below
itemName = string containing item's name
itemType = number indicating item's type - values listed below
itemSlot = number indicating where you can put the item - values listed below
itemRarity = number indicating item's rarity - values listed below
itemColor = number indicating the color in which the item would've been highlighted. 


Explaining parameters returned by function
item_name, mix, show, color2, r,g,b

"item_name" is the name that will display when highlighting. So you are in control of what displays on your screen. For example you could modify gold to display as "cash" instead.

"show" - if 0, item won't be highlighted. If 1, it will.

"color2" - the base color of highlighted item. If you want to keep the ones I've defined, just pass itemColor there.

"r,g,b" - these 3 values are in 0-255 range and they indicate RED/GREEN/BLUE. Experiment with them and color2 to achieve the color that you like. The resulting color is equal to color2-RGB. So you can only get a darker color.
COLOR_WHITE is R G B 255, so you can play with it to achieve any color that you want.


I've prepared some functions to show what you can do.
 --]]
 
CLASS_WARRIOR = 0
CLASS_ROGUE = 1
CLASS_SORCERER = 2

RARITY_NORMAL = 0
RARITY_MAGIC = 1
RARITY_UNIQUE = 2
RARITY_RARE = 3
RARITY_SUPERUNIQUE = 4

COLOR_WHITE = 0
COLOR_BLUE = 1
COLOR_RED = 2
COLOR_GOLD = 3
COLOR_ORANGE = 4
COLOR_YELLOW = 5

ITYPE_MISC = 0 --books/scrolls/potions/elixirs
ITYPE_SWORD = 1
ITYPE_AXE = 2
ITYPE_BOW = 3
ITYPE_MACE = 4
ITYPE_SHIELD = 5
ITYPE_LARMOR = 6
ITYPE_HELM = 7
ITYPE_MARMOR = 8
ITYPE_HARMOR = 9
ITYPE_STAFF = 10
ITYPE_GOLD = 11
ITYPE_RING = 12
ITYPE_AMULET = 13

ISLOT_NONE = 0
ISLOT_ONEHAND = 1
ISLOT_TWOHAND = 2
ISLOT_ARMOR = 3
ISLOT_HELM = 4
ISLOT_RING = 5
ISLOT_AMULET = 6
ISLOT_UNEQUIPABLE = 7
ISLOT_BELT = 8

function isElixir(name, itemType)
    if string.find(name, "elixir") and itemType == ITYPE_MISC then
	    return true
	else
	    return false
	end
end

function isManaPotion(name, itemType)
    if string.find(name, " mana") and itemType == ITYPE_MISC then
	    return true
	else
	    return false
	end
end

function isHealthPotion(name, itemType)
    if string.find(name, " health") and itemType == ITYPE_MISC then
	    return true
	else
	    return false
	end
end

--nice colors discovered by Qndel
function colorGreen()
    return COLOR_YELLOW,255,0,0
end
function colorCyan()
    return COLOR_WHITE,255,0,0
end
function colorRed()
    return COLOR_RED,0,255,255
end
function colorBlue()
    return COLOR_WHITE,255,50,0
end
-- notice that those return 4 values, so you have to do return name,1,colorBlue() instead of the usual return name,1,color2,r,g,b :)

function stripRed(color)
    return color,255,0,0
end
function stripGreen(color)
    return color,0,255,0
end
function stripBlue(color)
    return color,0,0,255
end

function testLootFilter1(playerName,playerClass,itemName,itemType,itemSlot,itemRarity,itemColor)
	if playerClass == CLASS_SORCERER then
	    if isManaPotion(itemName,itemType) == true then
			return itemName,1,colorGreen()
		end
	elseif playerClass == CLASS_WARRIOR  then
	    if isHealthPotion(itemName,itemType) == true then
			return itemName,1,colorGreen()
		end
	end
	if itemType == ITYPE_GOLD then
	    local out = "==>"..itemName.."<=="
		return out,1,stripBlue(itemColor)
	end
	return itemName,1,itemColor,0,0,0
end
--item_name, show, color2, r,g,b


function lootFilterLowercase(playerName,playerClass,itemName,itemType,itemSlot,itemRarity,itemColor)
	return testLootFilter1(playerName,playerClass,itemName,itemType,itemSlot,itemRarity,itemColor)
end


function lootFilter(playerName,playerClass,itemName,itemType,itemSlot,itemRarity,itemColor)
	--return itemName,1,itemColor,0,0,0
	return lootFilterLowercase(playerName:lower(),playerClass,itemName:lower(),itemType,itemSlot,itemRarity,itemColor)
	--return itemName,1,itemColor,0,0,0
end