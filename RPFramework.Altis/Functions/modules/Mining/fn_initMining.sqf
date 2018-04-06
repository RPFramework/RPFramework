/*
Author: Kerkkoh
First Edit: 2.2.2017
*/
RPF_Grinder = objNull;

_menuItems = [
	[
		["!(isNull RPF_Grinder)"],
		[(localize "STR_RPF_MODULES_MINING_UNEQUIP"), "[] call ClientModules_fnc_equipGrinder"]
	],
	[
		["!(isNull RPF_Grinder)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_miningModule' >> 'rocks') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 5", "isNil {RPF_Mining}"],
		[(localize "STR_RPF_MODULES_MINING_GRIND"), "[cursorObject] spawn ClientModules_fnc_mineStone"]
	],
	[
		["cursorObject getVariable ['mp', false]", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_MINING_PROCESSING"), "[] call ClientModules_fnc_openProcessMinerals"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_INTERACTION", _menuItems]call Client_fnc_addSubInteractions;

RPF_Usables pushBack ["RPF_Mining_Grinder", ["RPF_Mining_Grinder"], "ClientModules_fnc_equipGrinder"];
