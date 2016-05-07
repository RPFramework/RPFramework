/*
Author: Kerkkoh
First Edit: 7.5.2016
*/
params ["_ct"];
_amount = _ct getVariable "money";

_ct setVariable ["money", nil, true];
deleteVehicle _ct;

[_amount]call Client_fnc_addCash;
