/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_failMsg", "_smokeColor"];

hint (selectRandom _failMsg);

RPF_labItems = [];
RPF_labPlayerItems = [];

lbClear 1500;
lbClear 1501;

if (_smokeColor == 1) then {
	[RPF_curLab, [0.02,0.302,0], (25+random 5)] remoteExec ["ClientModules_fnc_methSmoke", 0];
} else {
	[RPF_curLab, [0.439,0,0.075], (25+random 5)] remoteExec ["ClientModules_fnc_methSmoke", 0];
};

closeDialog 0;