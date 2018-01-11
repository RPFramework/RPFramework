/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'methLab'})", "isNil {cursorObject getVariable 'buyableThing'}", "(player distance cursorObject) <= 3"],
		[(localize "STR_RPF_MODULES_METHLAB_OPENLAB"), "[cursorObject] call ClientModules_fnc_openMethLab"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItems]call Client_fnc_addSubInteractions;

//Add conditions and statements to the buyPhysicalShop script
//Spawn a thread and wait a bit before calling shopSystem's module function
[] spawn {
if (isNil "ClientModules_fnc_buyPhysicalShopStatement") exitWith {};
uiSleep 2;
[
{not (isNil {_ct getVariable 'methLab'})}, //Condition <Code>
{_newfurn setVariable ["methLab", 1, true]}, //Statement <Code>
2 //Code block
] call ClientModules_fnc_buyPhysicalShopStatement;
};

RPF_ItemNames pushBack ["OfficeTable_01_new_F", localize("STR_RPF_MODULES_METHLAB_CHEMTABLE")];
