/*
Author: Kerkkoh
First Edit: 7.9.2016

Type: Default Module
*/

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'atm'})", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_ATM_OPEN"), "[cursorObject] call ClientModules_fnc_openATM"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_INTERACTION", _menuItems]call Client_fnc_addSubInteractions;
