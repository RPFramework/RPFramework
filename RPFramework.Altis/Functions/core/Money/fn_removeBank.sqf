/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "bank";
_new = _old - _amount;
if (_new < 0) then {
	_return = false;
} else {
	player setVariable ["bank", _new, true];
	_return = true;
};