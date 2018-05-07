/*
Author: Kerkkoh
First Edit: 5.12.2016

Array format: [prisoners (insert an empty array), position, doesn't have a prisoner (insert true by default)]
This array is not in the config since it's an in-memory store for inmates
*/

diag_log (localize "STR_RPF_JAIL_INIT");

private _menuItemsPlayer = [
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= 15", "isPlayer cursorObject", "(player distance cursorObject) <= 2"],
		["STR_RPF_MODULES_JAIL_ARREST", "[cursorObject] call ClientModules_fnc_openArrestMenu"]
	]
];
private _menuItemsOther = [
	[
		["((position player) distance (getMarkerPos 'jail')) <= 15", "player getVariable ['cop', 0] <= 0", "(isNil {player getVariable 'jailed'}) || !(player getVariable 'jailed')"],
		["STR_RPF_MODULES_JAIL_BREAKOUT", "[] call ClientModules_fnc_openJailBreakout"]
	],
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= 15"],
		["STR_RPF_MODULES_JAIL_FREEPRISONERS", "[] call ClientModules_fnc_openFreePrisoners"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_PLAYER", _menuItemsPlayer]call Server_fnc_addSubInteractions;
["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItemsOther]call Server_fnc_addSubInteractions;

[]call ServerModules_fnc_initJailObjects;

RPF_JailCells = [
	[[], [16495.787109, 12796.915039, 0.000555992], true],
	[[], [16504.886719, 12797.0585938, 0.000555992], true]
];
