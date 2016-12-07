/*
Author: Kerkkoh
First Edit: 22.4.2016
*/

_menuItems = [
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= 15", "cursorObject isKindOf 'Man'", "(player distance cursorObject) <= 2"],
		["Arrest", "[cursorObject] call ClientModules_fnc_openArrestMenu"]
	],
	[
		["((position player) distance (getMarkerPos 'jail')) <= 15", "player getVariable ['cop', 0] <= 0", "(isNil {player getVariable 'jailed'}) || !(player getVariable 'jailed')"],
		["Breakout", "[] call ClientModules_fnc_openJailBreakout"]
	],
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= 15"],
		["Free prisoners", "[] call ClientModules_fnc_openFreePrisoners"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;