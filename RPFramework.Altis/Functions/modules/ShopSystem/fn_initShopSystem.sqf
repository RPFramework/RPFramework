/*
Author: Kerkkoh
First Edit: 22.4.2016
*/

_menuItems = [
	[
		["!(isNil {cursorTarget getVariable 'buyableThing'})"],
		["Buy this", "[cursorTarget] call ClientModules_fnc_openPhysicalShop"]
	],
	[
		["!(isNil {cursorTarget getVariable 'shopSystemShop'})"],
		["Open shop", "[cursorTarget] call ClientModules_fnc_openVirtualShop"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;