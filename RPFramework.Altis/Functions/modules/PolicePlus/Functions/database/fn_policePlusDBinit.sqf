/*
Author: Kerkkoh
First Edit: 27.12.2016
*/

_menuItems = [
	[
		["!(isNull objectParent player)", "(player getVariable ['cop', 0]) > 0", "(typeOf vehicle player) in ((missionConfigFile >> 'RPF_Config' >> 'policeCars') call BIS_fnc_getCfgData)"],
		[(localize "STR_RPF_MODULES_POLICEPLUS_PDB"), "[] call ClientModules_fnc_policePlusDBopen"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_VEHICLES", _menuItems]call Client_fnc_addSubInteractions;
