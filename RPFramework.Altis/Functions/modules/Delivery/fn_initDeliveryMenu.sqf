/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:

This is a script showing you how to add menu items to the cba fleximenu used by RPFramework.
*/

_menuItems = [
	[
		["alive player"],
		["Get Delivery", "[] call ClientModules_fnc_Delivery"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
