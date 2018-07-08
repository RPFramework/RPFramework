/*
Author: Kerkkoh
First Edit: 7.9.2016

PARAMS:
0 - NUMBER - Duty status 0 goes off duty and anything else goes on duty
1 - NUMBER - Type, 0 is cop and anything else is ems

*/

params ["_d", "_t"];
if(_d isEqualTo 0) then {
	if(_t isEqualTo 0) then {
		player setVariable ["cop", 0, true];
		player setVariable ["copoffduty", player getVariable ["cop", 0], true];
	} else {
		player setVariable ["ems", 0, true];
		player setVariable ["emsoffduty", player getVariable ["ems", 0], true];
	};
} else {
	if(_t isEqualTo 0) then {
		player setVariable ["cop", player getVariable ["copoffduty", 0], true];
		player setVariable ["copoffduty", 0, true];
	} else {
		player setVariable ["ems", player getVariable ["emsoffduty", 0], true];
		player setVariable ["emsoffduty", 0, true];
	};
};
