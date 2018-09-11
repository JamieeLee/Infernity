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

--there's a function printMsg(string) which you can use to display a message on screen. It will lock your game as your script will be spamming it constantly, to unlock the game, switch back to script, disable the message, close the message and go back to game.
 example usage: printMsg("Hello from LUA!".." "..tostring(123))
 --]]
 
 function printMsg(data)
     if type(data) == "string" then
	     printMessage(data)
	else
	    --printMessage("wrong data for printMsg function - input wasn't a string!")
		printMessage(tostring(data))
	end
end
 
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

SPL_FIREBOLT="firebolt"
SPL_HEALING="healing"
SPL_LIGHTNING="lightning"
SPL_FLASH="flash"
SPL_FIREWALL="fire wall"       
SPL_TOWNPORTAL ="town portal"    
SPL_STONECURSE="stone curse"
SPL_PHASING="phasing"        
SPL_MANASHIELD="mana shield"    
SPL_FIREBALL="fireball"       
SPL_GUARDIAN="guardian"        
SPL_CHAINLIGHTNING="chain lightning" 
SPL_FLAMEWAVE="flame wave"     
SPL_INFERNO="inferno"        
SPL_GOLEM="golem"          
SPL_TELEPORT="teleport"       
SPL_ELEMENTAL="elemental"      
SPL_CHARGEDBOLT="charged bolt"    
SPL_HOLYBOLT="holy bolt"       
SPL_TELEKINESIS="telekinesis"     
SPL_HEALOTHER="heal other"      
SPL_BLOODSTAR="blood star"      
SPL_BONESPIRIT="bone spirit"    
--you can define which books to highlight (true) and which not (false)
goodBooks = {	  
[SPL_FIREBOLT] = false,
[SPL_HEALING] = false,
[SPL_LIGHTNING] = true,
[SPL_FLASH] = true,
[SPL_FIREWALL] = true,
[SPL_TOWNPORTAL] = true,
[SPL_STONECURSE] = true,
[SPL_PHASING] = true,
[SPL_MANASHIELD] = true,
[SPL_FIREBALL] = true,
[SPL_CHAINLIGHTNING] = true,
[SPL_GUARDIAN] = true,
[SPL_FLAMEWAVE] = true,
[SPL_INFERNO] = false,
[SPL_GOLEM] = true,
[SPL_TELEPORT] = true,
[SPL_ELEMENTAL] = true,
[SPL_CHARGEDBOLT] = false,
[SPL_HOLYBOLT] = false,
[SPL_TELEKINESIS] = false,
[SPL_HEALOTHER] = false,
[SPL_BLOODSTAR] = true,
[SPL_BONESPIRIT] = true,
    }		
	
function isPotionOf(args,name)
    if string.find(args.itemName, name) and string.find(args.itemName, "potion of") and args.itemType == ITYPE_MISC and args.itemSlot == ISLOT_BELT and not isScroll(args) then
	    return true
	else
	    return false
	end
end

function isElixir(args)
    if string.find(args.itemName, "elixir of ") and args.itemType == ITYPE_MISC then
	    return true
	else
	    return false
	end
end

function isManaPotion(args)
    return isPotionOf(args,"mana")
end

function isHealthPotion(args)
    return isPotionOf(args,"healing")
end

function isRejuvenationPotion(args)
    return isPotionOf(args,"rejuvenation")
end

function isPotion(args)
	if string.find(args.itemName, "potion of ") then
	    return true
	else
	    return false
	end
end

function isScroll(args)
    if string.find(args.itemName, "scroll of ") then
	    return true
	else
	    return false
	end
end

function isBook(args)
    if string.find(args.itemName, "book of ") then
	    return true
	end
	return false
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

function showNoItem()
	return "",0,0,0,0,0
end


function extractSpellNameFromBook(args)
	local bname = string.gsub(args.itemName, "book of ", "")
	return bname
end

function shouldHighlightBook(args)
	if isBook(args) == false then
        return true	
	end
	local out = goodBooks[extractSpellNameFromBook(args)]
	if out == nil then
	    return false
	else
	    return out
	end
end

function testLootFilter1(args)
	--printMsg(args.itemSlot.." "..args.itemName)
	if (args.itemRarity <= RARITY_MAGIC and args.itemType ~= ITYPE_GOLD and args.itemType ~= ITYPE_MISC) or (shouldHighlightBook(args) == false) or isScroll(args) == true then
		return showNoItem()
	end
	if isElixir(args) == true then
		return args.itemName,1,colorGreen()
	end
	
	if args.playerClass == CLASS_SORCERER then
	    if isPotion(args) == true then
			return showNoItem()
		end
	elseif args.playerClass == CLASS_WARRIOR  then
	    if isHealthPotion(args) == true then
			return args.itemName,1,colorGreen()
		end
	end
	

	if args.itemType == ITYPE_GOLD then
	    local out = string.gsub(args.itemName, "gold", "$$$")
		return out,1,stripBlue(args.itemColor)
	end
	return args.itemName,1,args.itemColor,0,0,0
end
--item_name, show, color2, r,g,b

function yourLootFilter(args)
	return args.itemName,1,args.itemColor,0,0,0
end


function lootFilterLowercase(args)
    if args.playerName == "pug" then
	    return testLootFilter1(args)--qndel's amazing loot filter
    else
		return yourLootFilter(args)
	end
end


function lootFilter(playerName,playerClass,itemName,itemType,itemSlot,itemRarity,itemColor)
	return lootFilterLowercase({playerName=playerName:lower(),playerClass=playerClass,itemName=itemName:lower(),itemType=itemType,itemSlot=itemSlot,itemRarity=itemRarity,itemColor=itemColor})
	--return itemName,1,itemColor,0,0,0
end