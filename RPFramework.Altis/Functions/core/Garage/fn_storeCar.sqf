/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

params ["_ct"];

_pia = RPF_Cars find _ct;
RPF_Cars deleteAt _pia;

_hit = [_ct]call Client_fnc_vehicleHitGet;

[typeOf _ct, _hit, player] remoteExecCall ["Server_fnc_insertGarage", 2];

deleteVehicle _ct;