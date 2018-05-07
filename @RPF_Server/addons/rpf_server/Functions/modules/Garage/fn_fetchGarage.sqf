/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params["_player"];

private _vehicles = [(format["garageVehicles:%1", getPlayerUID _player]), 2] call ExternalS_fnc_ExtDBasync;

[_vehicles] remoteExecCall ["ClientModules_fnc_receiveGarage", _player];
