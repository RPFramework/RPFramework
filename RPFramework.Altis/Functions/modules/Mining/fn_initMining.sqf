/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

RPF_Rocks = ["RPF_Mining_Rock1", "RPF_Mining_Rock2", "RPF_Mining_Rock3"];
RPF_Grinder = objNull;

_menuItems = [
	[
		["!(isNull RPF_Grinder)"],
		["Unequip Grinder", "[] call ClientModules_fnc_equipGrinder"]
	],
	[
		["!(isNull RPF_Grinder)", "(typeOf cursorObject) in RPF_Rocks", "(player distance cursorObject) <= 5", "isNil {RPF_Mining}"],
		["Grind", "[cursorObject] spawn ClientModules_fnc_mineStone"]
	],
	[
		["cursorObject getVariable ['mp', false]", "(player distance cursorObject) <= 5"],
		["Processing", "[] call ClientModules_fnc_openProcessMinerals"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

RPF_Usables pushBack ["RPF_Mining_Grinder", "[] call ClientModules_fnc_equipGrinder"];
