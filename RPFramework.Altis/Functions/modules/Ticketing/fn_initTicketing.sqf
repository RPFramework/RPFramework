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
["STR_RPF_CORE_INTERACTION_CAT_PLAYER", _menuItems]call Client_fnc_addSubInteractions;