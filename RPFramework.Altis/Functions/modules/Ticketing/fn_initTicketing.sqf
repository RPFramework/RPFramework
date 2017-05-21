/*
Author: Kerkkoh
First Edit: 17.4.2016

Additional Information:
Adds basic ticketing on site for police personel
*/

_menuItems = [
	[
		["(player getVariable ['cop', 0]) > 0", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_TICKETING_ISSUE"), "[cursorObject] call ClientModules_fnc_ticket"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;