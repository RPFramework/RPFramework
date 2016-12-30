/*
Author: Kerkkoh
First Edit: 29.12.2016
*/

params ["_id", "_unit"];

_i = 0;
{
	if ((_x select 0) == _id) exitWith {
		_i = _forEachIndex;
	};
}forEach RPF_dispatchTasks;

_task = RPF_dispatchTasks select _i;
(_task select 4) pushBack _unit;

RPF_dispatchTasks set [_i, _task];

if (!isNil {RPF_dispatcher}) then {
	[RPF_dispatchTasks] remoteExec ["ClientModules_fnc_policePlusDrefreshTasks", RPF_dispatcher];
};
