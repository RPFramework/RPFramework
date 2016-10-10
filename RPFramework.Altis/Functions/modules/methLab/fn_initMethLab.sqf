/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'methLab'})", "isNil {cursorObject getVariable 'buyableThing'}", "(player distance cursorObject) <= 3"],
		["Open Lab", "[cursorObject] call ClientModules_fnc_openMethLab"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
