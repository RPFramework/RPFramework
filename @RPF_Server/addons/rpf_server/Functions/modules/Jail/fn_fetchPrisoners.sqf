/*
Author: Kerkkoh
First Edit: 6.12.2016
*/

params ["_player"];

private _prisoners = [];
{
	_prisoners append (_x select 0);
	true;
}count RPF_JailCells;

[_prisoners] remoteExecCall ["ClientModules_fnc_receivePrisoners", _player];
