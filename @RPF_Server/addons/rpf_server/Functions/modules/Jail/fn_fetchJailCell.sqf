/*
Author: Kerkkoh
First Edit: 5.12.2016
*/

params ["_player", "_time", "_reason"];

_freeCells = [];
_pos = [];
_cellPos = 0;
{
	if (_x select 2) then {
		_freeCells pushBack _x;
	};
}forEach RPF_JailCells;

if ((count _freeCells) > 0) then {
	_pos = ((_freeCells select 0) select 1);
	{
		_isEqual = [_x select 1, _pos]call BIS_fnc_areEqual;
		if (_isEqual) then {
			_cellPos = _forEachIndex;
		};
	}forEach RPF_JailCells;
	((RPF_JailCells select _cellPos) select 0) pushBack _player;
} else {
	_pos = ((RPF_JailCells select 0) select 1);
	((RPF_JailCells select 0) select 0) pushBack _player;
};

(RPF_JailCells select _cellPos) set [2, false];

[_pos, _time, _reason] remoteExec ["ClientModules_fnc_receiveJailCell", _player];