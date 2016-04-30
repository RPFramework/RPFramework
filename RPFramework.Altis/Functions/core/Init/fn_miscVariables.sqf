/*
Author: Kerkkoh
First Edit: 23.11.2015
*/

RPF_Handcuffs = "RPF_Items_Handcuffs";
RPF_HandcuffKeys = "RPF_Items_HandcuffKeys";

/* ## https://community.bistudio.com/wiki/ListOfKeyCodes You're welcome! ## */
RPF_InteractionKey = 15;

RPF_PoliceCars = [
	"B_MRAP_01_F",
	"O_Heli_Light_02_unarmed_F"
];
RPF_MedicCars = [
	
];

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
	["RPF_Items_WaterBottle", "['RPF_Items_WaterBottle']call Client_fnc_drinkItem"],
	
	["RPF_Items_PoppySeed", "['RPF_Items_PoppySeed']call ClientModules_fnc_plantPlantae"],
	["RPF_Items_OliveSeed", "['RPF_Items_OliveSeed']call ClientModules_fnc_plantPlantae"]
];

RPF_PhysicalItems = [];
RPF_ownedFurniture = [];