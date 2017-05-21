/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
params ["_seed"];

if ((surfaceType position player) in ((missionConfigFile >> "RPF_farmingModule" >> "farmGroundTypes") call BIS_fnc_getCfgData)) then {
	[_seed, player] remoteExecCall ["ServerModules_fnc_plantPlantae", 2];
} else {
	player addItem _seed;
	hint (localize "STR_RPF_MODULES_FARMING_CANTPLANT");
};