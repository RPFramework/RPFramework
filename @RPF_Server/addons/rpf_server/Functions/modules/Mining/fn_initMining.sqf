/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

diag_log (localize "STR_RPF_MINING_INIT");

private _menuItems = [
	[
		["!(isNull RPF_Grinder)"],
		["STR_RPF_MODULES_MINING_UNEQUIP", "[] call ClientModules_fnc_equipGrinder"]
	],
	[
		["!(isNull RPF_Grinder)", "isSimpleObject cursorObject", "((getModelInfo cursorObject) select 0) in getArray(missionConfigFile >> 'RPF_miningModule' >> 'rocks')", "(player distance cursorObject) <= 5", "isNil 'RPF_Mining'"],
		["STR_RPF_MODULES_MINING_GRIND", "[cursorObject] spawn ClientModules_fnc_mineStone"]
	],
	[
		["cursorObject getVariable ['mp', false]", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_MINING_PROCESSING", "[] call ClientModules_fnc_openProcessMinerals"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_INTERACTION", _menuItems]call Server_fnc_addSubInteractions;

[]call ServerModules_fnc_initMines;
