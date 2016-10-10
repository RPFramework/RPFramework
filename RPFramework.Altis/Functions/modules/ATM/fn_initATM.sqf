/*
Author: Kerkkoh
First Edit: 7.9.2016

Type: Default Module
*/	
_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'atm'})", "(player distance cursorObject) <= 5"],
		["Open ATM", "[cursorObject] call ClientModules_fnc_openATM"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
