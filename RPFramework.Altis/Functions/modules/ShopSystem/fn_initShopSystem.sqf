/*
Author: Kerkkoh
First Edit: 22.4.2016
*/

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'buyableThing'})"],
		["Buy this", "[cursorObject] call ClientModules_fnc_openPhysicalShop"]
	],
	[
		["!(isNil {cursorObject getVariable 'shopSystemShop'})"],
		["Open shop", "[cursorObject] call ClientModules_fnc_openVirtualShop"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;