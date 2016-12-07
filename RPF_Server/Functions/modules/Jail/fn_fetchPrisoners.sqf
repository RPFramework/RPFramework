/*
Author: Kerkkoh
First Edit: 6.12.2016
*/

params ["_player"];

_prisoners = [];
{
	_prisoners append (_x select 0);
}forEach RPF_JailCells;

[_prisoners] remoteExecCall ["ClientModules_fnc_receivePrisoners", _player];