/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
params["_player", "_q"];

_fetchstr = format ["ppDBFetchCriminal:%1", _q];
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;

[_fetch] remoteExec ["ClientModules_fnc_policePlusDBreceiveCriminals", _player];
