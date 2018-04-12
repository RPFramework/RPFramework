/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
params ["_seed"];

[_seed, player] remoteExecCall ["ServerModules_fnc_plantPlantae", 2];
