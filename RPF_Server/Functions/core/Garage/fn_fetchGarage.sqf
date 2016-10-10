/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params["_player"];

_uid = getPlayerUID _player;

_fetchvehiclesstr = format ["garageVehicles:%1", _uid];
_vehicles = [_fetchvehiclesstr, 2] call ExternalS_fnc_ExtDBasync;

[_vehicles] remoteExecCall ["Client_fnc_receiveGarage", _player];
