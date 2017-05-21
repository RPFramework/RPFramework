/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_items", "_player"];

_recipe = 0;
if (_items isEqualTo ((configFile >> "RPF_methLabServerModule" >> "methRecipeOne") call BIS_fnc_getCfgData)) then {
	_recipe = 1;
};
if (_items isEqualTo ((configFile >> "RPF_methLabServerModule" >> "methRecipeTwo") call BIS_fnc_getCfgData)) then {
	_recipe = 2;
};

[_recipe] remoteExecCall ["ClientModules_fnc_receiveMethLabCheck", _player];
