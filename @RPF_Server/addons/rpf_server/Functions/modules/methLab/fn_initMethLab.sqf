/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

diag_log (localize "STR_RPF_METHLAB_INIT");

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'methLab'})", "isNil {cursorObject getVariable 'buyableThing'}", "(player distance cursorObject) <= 3"],
		["STR_RPF_MODULES_METHLAB_OPENLAB", "[cursorObject] call ClientModules_fnc_openMethLab"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItems]call Server_fnc_addSubInteractions;
