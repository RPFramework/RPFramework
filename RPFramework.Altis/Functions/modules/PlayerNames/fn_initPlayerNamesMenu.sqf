/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:

This is a script showing you how to add menu items to the cba fleximenu used by RPFramework.
*/

_menuItems = [
	[
		["isPlayer cursorObject", "alive cursorObject", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_PLAYERNAMES_SETNAME"), "createDialog 'setName'"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
