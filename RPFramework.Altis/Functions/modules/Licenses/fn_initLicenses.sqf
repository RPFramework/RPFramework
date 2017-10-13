/*
Author: Kerkkoh
First Edit: 24.4.2017
*/

[player] remoteExecCall ["ServerModules_fnc_fetchLicenses", 2];

_menuItems = [
	[
		["isPlayer cursorObject"],
		[(localize "STR_RPF_MODULES_LICENSES_MYLS"), "[cursorObject] call ClientModules_fnc_openLicenses"]
	],
	[
		["player getVariable ['cop', 0] > 0", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_LICENSES_MANLS"), "[cursorObject] call ClientModules_fnc_openManageLicenses"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_PLAYER", _menuItems]call Client_fnc_addSubInteractions;
