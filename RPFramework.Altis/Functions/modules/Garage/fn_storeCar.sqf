/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];

[_ct getVariable "key",true] remoteExecCall ["ServerModules_fnc_switchGarage", 2];

deleteVehicle _ct;