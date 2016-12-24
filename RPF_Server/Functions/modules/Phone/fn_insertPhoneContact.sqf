/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
params["_player", "_name", "_number"];

_uid = getPlayerUID _player;

_insertstr = format ["insertPhoneContact:%1:%2:%3", _uid, _name, _number];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
