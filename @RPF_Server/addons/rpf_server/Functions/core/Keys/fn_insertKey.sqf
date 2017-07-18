/*
Author: Kerkkoh
First Edit: 18.7.2017
*/

params ["_vehicle", "_player"];

_key = []call Server_fnc_generateKey;

_vehicle setVariable ["key", _key, true];

_insert = [0, format["insertKey:%1:%2", getPlayerUID _player, _key]] call ExternalS_fnc_ExtDBquery;

[_player]call Server_fnc_fetchKeys;
