/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
params["_player", "_id"];

private _fetch = [format ["ppDBFetchCrimes:%1", _id], 2] call ExternalS_fnc_ExtDBasync;

[_fetch] remoteExec ["ClientModules_fnc_policePlusDBreceiveCrimes", _player];
