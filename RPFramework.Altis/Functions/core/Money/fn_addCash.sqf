/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "cash";
_new = _old + _amount;
player setVariable ["cash", _new, true];