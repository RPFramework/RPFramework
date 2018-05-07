/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:
Here you can add some scripts to run on the server.
*/

private _menuItems = [
	[
		["(player getVariable ['cop', 0]) > 0", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_TICKETING_ISSUE", "[cursorObject] call ClientModules_fnc_ticket"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_PLAYER", _menuItems]call Server_fnc_addSubInteractions;
