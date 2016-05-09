/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
params ["_seed"];

if ((surfaceType position player) in RPF_farmGroundTypes) then {
	[[_seed, player], "ServerModules_fnc_plantPlantae", false, false, false] call BIS_fnc_MP;
} else {
	player addItem _seed;
	hint "Can't plant here";
};