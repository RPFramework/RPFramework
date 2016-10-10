/*
Author: Kerkkoh
First Edit: 7.9.2016

PARAMS:
0 - NUMBER - Duty status 0 goes off duty and anything else goes on duty
1 - NUMBER - Type, 0 is cop and anything else is ems

*/

params ["_d", "_t"];
if(_d == 0) then {
	if(_t == 0) then {
		player setVariable ["cop", 0, true];
		_cop = player getVariable ["cop", 0];
		player setVariable ["copoffduty", _cop, true];
	} else {
		player setVariable ["ems", 0, true];
		_ems = player getVariable ["ems", 0];
		player setVariable ["emsoffduty", _ems, true];
	};
} else {
	if(_t == 0) then {
		_cop = player getVariable ["copoffduty", 0];
		player setVariable ["cop", _cop, true];
		player setVariable ["copoffduty", 0, true];
	} else {
		_ems = player getVariable ["emsoffduty", 0];
		player setVariable ["ems", _ems, true];
		player setVariable ["emsoffduty", 0, true];
	};
};
