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

[RPF_curLab, [[0.439,0,0.075],[0.02,0.302,0]] select (_smokeColor isEqualTo 1), (25+random 5)] remoteExec ["ClientModules_fnc_methSmoke", 0];

RPF_curLab setVariable ["labActive", false, true];

closeDialog 0;
