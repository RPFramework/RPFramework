/*
Author: Kerkkoh
First Edit: 5.12.2016
*/

params ["_player", "_time", "_reason"];
private["_freeCells", "_pos", "_cellPos"];

_freeCells = [];
_pos = (RPF_JailCells select 0) select 1;
_cellPos = 0;

_freeCells = RPF_JailCells select {_x select 2};

if ((count _freeCells) > 0) then {
	_pos = ((_freeCells select 0) select 1);

	{
		if ((_x select 1) isEqualTo _pos) exitWith {
			_cellPos = _forEachIndex;
		};
	}forEach RPF_JailCells;
};

((RPF_JailCells select _cellPos) select 0) pushBack _player;

(RPF_JailCells select _cellPos) set [2, false];

[_pos, _time, _reason] remoteExec ["ClientModules_fnc_receiveJailCell", _player];
