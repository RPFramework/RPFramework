/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

params ["_house"];

if (!(isNil {_house getVariable "owner"})) then {
	private _price = _house getVariable "price";
	if (!([2, _price]call Client_fnc_checkMoney)) exitWith { hint (localize "STR_RPF_MODULES_HOUSING_NOTENOUGHBANK"); };
	[_price]call Client_fnc_removeBank;

	[_house, player] remoteExecCall ["ServerModules_fnc_transferHouseOwnership", 2];
} else {
	private _price = parseNumber (ctrlText 1003);
	if (!([2, _price]call Client_fnc_checkMoney)) exitWith { hint (localize "STR_RPF_MODULES_HOUSING_NOTENOUGHBANK"); };
	[_price]call Client_fnc_removeBank;

	[_house, player] remoteExecCall ["ServerModules_fnc_insertHouse", 2];
	hint (localize "STR_RPF_MODULES_HOUSING_WAIT");
};

closeDialog 0;
