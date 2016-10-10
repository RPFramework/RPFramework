/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_items", "_player"];

_methRecipe1 = [
    ["RPF_Items_ButaneCanister", 0],
    ["RPF_Items_Matches", 3],
    ["RPF_Items_Painkillers", 2],
	["RPF_Items_Battery", 2],
	["RPF_Items_Vitamins", 0],
    ["RPF_Items_GasCanister", 2],
	["RPF_Items_CleanerSpray", 1]
];
_methRecipe2 = [
    ["RPF_Items_ButaneCanister", 1],
    ["RPF_Items_Matches", 4],
    ["RPF_Items_Painkillers", 3],
	["RPF_Items_Battery", 3],
	["RPF_Items_Vitamins", 1],
    ["RPF_Items_GasCanister", 1],
	["RPF_Items_CleanerSpray", 2]
];

_recipe = 0;
_recipe1 = [_items, _methRecipe1]call BIS_fnc_areEqual;
_recipe2 = [_items, _methRecipe2]call BIS_fnc_areEqual;

if (_recipe1) then {
	_recipe = 1;
};
if (_recipe2) then {
	_recipe = 2;
};

[_recipe] remoteExecCall ["ClientModules_fnc_receiveMethLabCheck", _player];
