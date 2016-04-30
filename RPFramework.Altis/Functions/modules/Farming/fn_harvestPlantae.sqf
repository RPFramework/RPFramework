/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
params ["_plant"];

[[_plant, player], "ServerModules_fnc_harvestPlantae", false, false, false] call BIS_fnc_MP;