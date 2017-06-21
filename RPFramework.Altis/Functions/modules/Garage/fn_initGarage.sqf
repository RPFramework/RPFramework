/*
Author: Kerkkoh
First Edit: 2.1.2017
*/

_menuItems = [
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "[]call ClientModules_fnc_nearGarage", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_GARAGE_STOREVEHICLE"), "[cursorObject] call ClientModules_fnc_storeCar"]
	],
	[
		["!(isNil {cursorObject getVariable 'garage'})", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_GARAGE_OPENGARAGE"), "[cursorObject] call ClientModules_fnc_openGarage"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;