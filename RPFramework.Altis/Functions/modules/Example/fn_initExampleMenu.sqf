/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:

This is a script showing you how to add menu items to the cba fleximenu used by RPFramework.
*/
_menuItems = [
	[
		["alive player"],
		[(localize "STR_RPF_MODULES_EXAMPLE_MENUACT"), "[] call ClientModules_fnc_hintExample"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItems]call Client_fnc_addSubInteractions;
