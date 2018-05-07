/*
Author: Kerkkoh
First Edit: 6.4.2018
*/

private _menuItems = [
	[
		["isPlayer cursorObject", "alive cursorObject", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_PLAYERNAMES_SETNAME"), "createDialog 'setName'"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_PLAYER", _menuItems]call Server_fnc_addSubInteractions;
