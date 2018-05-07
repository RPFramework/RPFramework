/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:
Here you can add some scripts to run on the server.
*/

diag_log (localize "STR_RPF_EXAMPLE_INIT");

private _menuItems = [
	[
		["alive player"],
		["STR_RPF_MODULES_EXAMPLE_MENUACT", "[] call ClientModules_fnc_hintExample"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItems]call Server_fnc_addSubInteractions;
