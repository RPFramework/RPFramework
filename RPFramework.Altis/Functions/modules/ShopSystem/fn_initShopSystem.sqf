/*
Author: Kerkkoh
First Edit: 22.4.2016
*/

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'buyableThing'})", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_SHOPSYSTEM_BUYTHIS"), "[cursorObject] call ClientModules_fnc_openPhysicalShop"]
	],
	[
		["!(isNil {cursorObject getVariable 'shopSystemShop'})", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_SHOPSYSTEM_OPENSHOP"), "[cursorObject] call ClientModules_fnc_openVirtualShop"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;