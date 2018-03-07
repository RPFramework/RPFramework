/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];

[_ct getVariable "key",true] remoteExecCall ["ServerModules_fnc_switchGarage", 2];
[_ct, true] remoteExecCall ["ServerModules_fnc_vehicleSaveHit", 2];
