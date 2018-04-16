/*
Author: Kerkkoh
First Edit: 23.12.2016
*/

diag_log (localize "STR_RPF_PHONE_INIT");

_menuItems = [
	[
		["alive player", "!(player getVariable ['cuffed', false])"],
		["STR_RPF_MODULES_PHONE_TITLE", "[] call ClientModules_fnc_openPhone"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_PLAYER", _menuItems]call Server_fnc_addSubInteractions;
