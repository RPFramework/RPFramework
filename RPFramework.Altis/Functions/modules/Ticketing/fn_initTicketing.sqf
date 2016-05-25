/*
Author: Kerkkoh
First Edit: 17.4.2016

Additional Information:
Adds basic ticketing on site for police personel
*/

_menuItems = [
	[
		["(player getVariable ['cop', 0]) > 0", "cursorObject isKindOf 'Man'"],
		["Issue Ticket", "[cursorObject] call ClientModules_fnc_ticket"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;