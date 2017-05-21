/*
Author: Kerkkoh
First Edit: 7.5.2016
*/
params ["_ct"];

[_ct getVariable "money"]call Client_fnc_addCash;

_ct setVariable ["money", nil, true];
deleteVehicle _ct;
