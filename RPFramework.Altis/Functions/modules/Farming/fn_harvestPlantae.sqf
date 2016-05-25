/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
params ["_plant"];

[_plant, player] remoteExecCall ["ServerModules_fnc_harvestPlantae", 2];