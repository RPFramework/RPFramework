/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
params["_player"];

private _fetch = [format ["contacts:%1", getPlayerUID _player], 2] call ExternalS_fnc_ExtDBasync;

[_fetch] remoteExec ["ClientModules_fnc_receiveContacts", _player];
