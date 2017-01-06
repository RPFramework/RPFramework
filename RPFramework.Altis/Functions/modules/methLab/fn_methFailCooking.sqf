/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_failMsg", "_smokeColor"];

hint (selectRandom _failMsg);
RPF_methLabItems = [
    ["RPF_Items_ButaneCanister", 0],
    ["RPF_Items_Matches", 0],
    ["RPF_Items_Painkillers", 0],
	["RPF_Items_Battery", 0],
	["RPF_Items_Vitamins", 0],
    ["RPF_Items_GasCanister", 0],
	["RPF_Items_CleanerSpray", 0]
];
RPF_methLabPlayerItems = [
    ["RPF_Items_ButaneCanister", 0],
    ["RPF_Items_Matches", 0],
    ["RPF_Items_Painkillers", 0],
	["RPF_Items_Battery", 0],
	["RPF_Items_Vitamins", 0],
    ["RPF_Items_GasCanister", 0],
	["RPF_Items_CleanerSpray", 0]
];

lbClear 1501;

if (_smokeColor == 1) then {
	[curMethLab, [0.02,0.302,0]] remoteExec ["ClientModules_fnc_methSmoke", 0];
} else {
	[curMethLab, [0.439,0,0.075]] remoteExec ["ClientModules_fnc_methSmoke", 0];
};

closeDialog 0;