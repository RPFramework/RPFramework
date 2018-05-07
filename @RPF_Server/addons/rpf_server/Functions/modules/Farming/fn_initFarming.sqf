/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

diag_log (localize "STR_RPF_FARMING_INIT");

private _menuItems = [
	[
		["isSimpleObject cursorObject", "((getModelInfo cursorObject) select 0) in ((missionConfigFile >> 'RPF_farmingModule' >> 'plantTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_FARMING_DESTROY", "[cursorObject] call ClientModules_fnc_destroyPlantae"]
	],
	[
		["isSimpleObject cursorObject", "((getModelInfo cursorObject) select 0) in ((missionConfigFile >> 'RPF_farmingModule' >> 'plantTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_FARMING_HARVEST", "[cursorObject] call ClientModules_fnc_harvestPlantae"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItems]call Server_fnc_addSubInteractions;

RPF_plantArray = [];

[] spawn ServerModules_fnc_farmingLoop;
