/*
Author: Kerkkoh
First Edit: 26.12.2016
Params:
0 - cursorObject
1 - Action to perform (0 for selling and changing price, 1 for stop selling)

*/
params ["_house", "_action"];

private _price = parseNumber (ctrlText 1400);
if ((_price < 0) && (_action == 0)) exitWith {hint (localize "STR_RPF_MODULES_HOUSING_INVALIDPRICE")};
if (_action == 1) then {
	_price = -1;
};
[_house getVariable "id", getPlayerUID player, _price] remoteExecCall ["ServerModules_fnc_updateHouse", 2];

_house setVariable ["price", _price, true];

closeDialog 0;
[_house] call ClientModules_fnc_openManageHouseSale;
