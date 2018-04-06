/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

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
