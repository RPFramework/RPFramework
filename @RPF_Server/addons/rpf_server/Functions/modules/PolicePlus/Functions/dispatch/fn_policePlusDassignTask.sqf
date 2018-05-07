/*
Author: Kerkkoh
First Edit: 29.12.2016
*/

params ["_id", "_unit"];
private["_idx", "_task"];

_idx = 0;
{
	if ((_x select 0) isEqualTo _id) exitWith {
		_idx = _forEachIndex;
	};
}forEach RPF_dispatchTasks;

_task = RPF_dispatchTasks select _idx;

(_task select 4) pushBack _unit;

RPF_dispatchTasks set [_idx, _task];

if (!isNil "RPF_dispatcher") then {
	[RPF_dispatchTasks] remoteExec ["ClientModules_fnc_policePlusDrefreshTasks", RPF_dispatcher];
};
