/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

params ["_player"];

if (!isNil "RPF_dispatcher") exitWith {
	["STR_RPF_POLICEPLUSDISPATCH_OCCUPIED", name RPF_dispatcher] remoteExecCall ["Client_fnc_hintMP", _player];
};

RPF_dispatcher = _player;

[RPF_policeCars, RPF_medicCars, RPF_dispatchTasks] remoteExec ["ClientModules_fnc_policePlusDreceive", _player];
