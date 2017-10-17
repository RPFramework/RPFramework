/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
_menuItems = [
	[
		["alive player", "!(player getVariable ['cuffed', false])"],
		[(localize "STR_RPF_MODULES_PHONE_TITLE"), "[] call ClientModules_fnc_openPhone"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_PLAYER", _menuItems]call Client_fnc_addSubInteractions;

RPF_phoneMessages = [];
RPF_phoneContacts = [];
