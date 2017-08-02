/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

if ((lbCurSel 1500) == -1) exitWith {};
_str = lbData [1500, lbCurSel 1500];
_car = call compile _str;

_position = (RPF_curGarage modelToWorld [0,-5,0]);
_nearest = nearestObjects [_position, ["Car"], 3];
if (count _nearest != 0) exitWith {hint (localize "STR_RPF_MODULES_GARAGE_BLOCKING");};

lbDelete [1500, lbCurSel 1500];

closeDialog 0;

[_car select 4,false] remoteExecCall ["ServerModules_fnc_switchGarage", 2];

_vehicle = (_car select 1) createVehicle [0,0,0];
_vehicle setPos _position;
_vehicle setDir (getDir RPF_curGarage);
[_car select 3, _vehicle]call Client_fnc_vehicleHitLoad;
_vehicle setVariable ["key", _car select 4, true];
[_vehicle] remoteExecCall ["Server_fnc_setupVehiclesKilledHandlers", 2];
_vehicle lock 2;
