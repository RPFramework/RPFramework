/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
_menuItems = [
	[
		["alive player", "!(player getVariable ['cuffed', false])"],
		["Phone", "[] call ClientModules_fnc_openPhone"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

RPF_emergencyNumber = "911";
RPF_phoneMessages = [];
RPF_phoneContacts = [];
