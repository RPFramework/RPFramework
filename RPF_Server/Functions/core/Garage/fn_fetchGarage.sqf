/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params["_player"];

_vehicles = [(format["garageVehicles:%1", getPlayerUID _player]), 2] call ExternalS_fnc_ExtDBasync;

[_vehicles] remoteExecCall ["Client_fnc_receiveGarage", _player];
