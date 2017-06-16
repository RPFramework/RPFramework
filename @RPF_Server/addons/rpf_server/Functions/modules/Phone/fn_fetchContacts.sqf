/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
params["_player"];

_uid = getPlayerUID _player;

_fetchstr = format ["contacts:%1", _uid];
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;

[_fetch] remoteExec ["ClientModules_fnc_receiveContacts", _player];
