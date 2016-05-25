/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
params ["_seed"];

if ((surfaceType position player) in RPF_farmGroundTypes) then {
	[_seed, player] remoteExecCall ["ServerModules_fnc_plantPlantae", 2];
} else {
	player addItem _seed;
	hint "Can't plant here";
};