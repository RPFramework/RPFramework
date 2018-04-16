/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

diag_log (localize "STR_RPF_ATM_INIT");

private _menuItems = [
	[
		["!(isNil {cursorObject getVariable 'atm'})", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_ATM_OPEN", "[cursorObject] call ClientModules_fnc_openATM"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_INTERACTION", _menuItems]call Server_fnc_addSubInteractions;
