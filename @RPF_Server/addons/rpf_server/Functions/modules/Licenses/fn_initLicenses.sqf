/*
Author: Kerkkoh
First Edit: 1.4.2017
*/

diag_log (localize "STR_RPF_LICENSES_INIT");

private _menuItems = [
	[
		["isPlayer cursorObject"],
		["STR_RPF_MODULES_LICENSES_MYLS", "[cursorObject] call ClientModules_fnc_openLicenses"]
	],
	[
		["player getVariable ['cop', 0] > 0", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_LICENSES_MANLS", "[cursorObject] call ClientModules_fnc_openManageLicenses"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_PLAYER", _menuItems]call Server_fnc_addSubInteractions;
