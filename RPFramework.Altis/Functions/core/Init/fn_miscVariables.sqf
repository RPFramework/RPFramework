/*
Author: Kerkkoh
First Edit: 23.11.2015
*/

/* These names will be used for items in trunks and so on. For example meth lab uses this [classname, name]	*/
RPF_ItemNames = [
];

/* Your modules can add edible items here with pushBack */
RPF_Edibles = [
	["RPF_Items_Salema", 50],
	["RPF_Items_Olives", 40],
	["RPF_Items_BakedBeans", 60],
	["RPF_Items_Cereal", 40],
	["RPF_Items_RiceBox", 50]
];

/* Your modules can add drinkable items here with pushBack */
RPF_Drinkables = [
	["RPF_Items_CleanerSpray", 30],
	["RPF_Items_Canteen", 100],
	["RPF_Items_WaterBottle", 90]
];

/* Your modules can add usable items here with pushBack 
Format is ["The item's classname", [params for the function ran due to consuming the item], "The function ran"]
See below for examples.

Remember to add all functions that are going to be ran to your module's usableWhitelist.hpp in format:
"Function name",

You can also add the whitelisted functions straight into the whitelist array in the mission config.
*/
RPF_Usables = [
	["RPF_Items_Salema", ["RPF_Items_Salema"], "Client_fnc_eatItem"],
	["RPF_Items_Olives", ["RPF_Items_Olives"], "Client_fnc_eatItem"],
	["RPF_Items_BakedBeans", ["RPF_Items_BakedBeans"], "Client_fnc_eatItem"],
	["RPF_Items_Cereal", ["RPF_Items_Cereal"], "Client_fnc_eatItem"],
	["RPF_Items_RiceBox", ["RPF_Items_RiceBox"], "Client_fnc_eatItem"],
	
	["RPF_Items_CleanerSpray", ["RPF_Items_CleanerSpray"], "Client_fnc_drinkItem"],
	["RPF_Items_Canteen", ["RPF_Items_Canteen"], "Client_fnc_drinkItem"],
	["RPF_Items_WaterBottle", ["RPF_Items_WaterBottle"], "Client_fnc_drinkItem"]
];

RPF_ownedFurniture = [];
RPF_Cars = [];
