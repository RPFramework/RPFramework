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

/* Your modules can add usable items here with pushBack */
RPF_Usables = [
	["RPF_Items_Meth", "player removeItem 'RPF_Items_Meth';"],
	["RPF_Items_Poppy", "player removeItem 'RPF_Items_Poppy';"],
	
	["RPF_Items_Salema", "['RPF_Items_Salema']call Client_fnc_eatItem"],
	["RPF_Items_Olives", "['RPF_Items_Olives']call Client_fnc_eatItem"],
	["RPF_Items_BakedBeans", "['RPF_Items_BakedBeans']call Client_fnc_eatItem"],
	["RPF_Items_Cereal", "['RPF_Items_Cereal']call Client_fnc_eatItem"],
	["RPF_Items_RiceBox", "['RPF_Items_RiceBox']call Client_fnc_eatItem"],
	
	["RPF_Items_CleanerSpray", "['RPF_Items_CleanerSpray']call Client_fnc_drinkItem"],
	["RPF_Items_Canteen", "['RPF_Items_Canteen']call Client_fnc_drinkItem"],
	["RPF_Items_WaterBottle", "['RPF_Items_WaterBottle']call Client_fnc_drinkItem"]
];

RPF_ownedFurniture = [];
RPF_Cars = [];
