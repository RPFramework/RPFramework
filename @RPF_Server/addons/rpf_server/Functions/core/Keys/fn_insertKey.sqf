/*
Author: Kerkkoh
First Edit: 18.7.2017
*/

params ["_vehicle", "_player"];

private _key = []call Server_fnc_generateKey;

_vehicle setVariable ["key", _key, true];

[0, format["insertKey:%1:%2:%3", getPlayerUID _player, _key, getPlateNumber _vehicle]] call ExternalS_fnc_ExtDBquery;

[_player]call Server_fnc_fetchKeys;

_key
