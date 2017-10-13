/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

_usables = [
	["RPF_Items_PoppySeed", "['RPF_Items_PoppySeed']call ClientModules_fnc_plantPlantae"],
	["RPF_Items_OliveSeed", "['RPF_Items_OliveSeed']call ClientModules_fnc_plantPlantae"]
];
{
	RPF_Usables pushBack _x;
}forEach _usables;

_menuItems = [
	[
		["(typeOf cursorObject) in ((missionConfigFile >> 'RPF_farmingModule' >> 'plantTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_FARMING_DESTROY"), "[cursorObject] call ClientModules_fnc_destroyPlantae"]
	],
	[
		["(typeOf cursorObject) in ((missionConfigFile >> 'RPF_farmingModule' >> 'plantTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_FARMING_HARVEST"), "[cursorObject] call ClientModules_fnc_harvestPlantae"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItems]call Client_fnc_addSubInteractions;
