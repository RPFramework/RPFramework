/*
Author: Kerkkoh
First Edit: 22.4.2016
*/

_menuItems = [
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= 15", "isPlayer cursorObject", "(player distance cursorObject) <= 2"],
		[(localize "STR_RPF_MODULES_JAIL_ARREST"), "[cursorObject] call ClientModules_fnc_openArrestMenu"]
	],
	[
		["((position player) distance (getMarkerPos 'jail')) <= 15", "player getVariable ['cop', 0] <= 0", "(isNil {player getVariable 'jailed'}) || !(player getVariable 'jailed')"],
		[(localize "STR_RPF_MODULES_JAIL_BREAKOUT"), "[] call ClientModules_fnc_openJailBreakout"]
	],
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= 15"],
		[(localize "STR_RPF_MODULES_JAIL_FREEPRISONERS"), "[] call ClientModules_fnc_openFreePrisoners"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;