/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

diag_log (localize "STR_RPF_METHLAB_INIT");

private _menuItems = [
	[
		["!(isNil {cursorObject getVariable 'methLab'})", "isNil {cursorObject getVariable 'buyableThing'}", "(player distance cursorObject) <= 3"],
		["STR_RPF_MODULES_METHLAB_OPENLAB", "[cursorObject] call ClientModules_fnc_openMethLab"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_INTERACTION", _menuItems]call Server_fnc_addSubInteractions;

//Add conditions and statements to the buyPhysicalShop script
//Spawn a thread and wait a bit before calling shopSystem's module function
[] spawn {
	waitUntil{uiSleep 0.1; !(isNil "RPF_buyPhysicalShopStatements")};
	uiSleep 2;
	[
		{!(isNil {_ct getVariable 'methLab'})}, //Condition <Code>
		{_newfurn setVariable ["methLab", 1, true]}, //Statement <Code>
		2 //Code block
	] call ServerModules_fnc_buyPhysicalShopStatement;
};
