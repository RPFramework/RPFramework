/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

params ["_class", "_hit", "_player"];

_uid = getPlayerUID _player;

_insertstr = format ["insertVehicle:%1:%2:%3", _class, _uid, _hit];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;