/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

if ((lbCurSel 1500) == -1) exitWith {};
_str = lbData [1500, lbCurSel 1500];
_car = call compile _str;
lbDelete [1500, lbCurSel 1500];

closeDialog 0;

[_car select 0] remoteExecCall ["Server_fnc_removeGarage", 2];

_vehicle = (_car select 1) createVehicle [0,0,0];
_vehicle setPos (RPF_curGarage modelToWorld [0,-5,0]);
[_car select 3, _vehicle]call Client_fnc_vehicleHitLoad;

RPF_Cars pushBack _vehicle;