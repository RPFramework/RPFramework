/*
Author: Kerkkoh
First Edit: 18.7.2017
*/
params["_player"];

private _keys = [(format["keys:%1", getPlayerUID _player]), 2] call ExternalS_fnc_ExtDBasync;

[_keys] remoteExecCall ["Client_fnc_receiveKeys", _player];
