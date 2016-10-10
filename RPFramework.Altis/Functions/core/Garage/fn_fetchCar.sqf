/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

_currentitemindex = lbCurSel 1500;
if (_currentitemindex == -1) exitWith {};
_carStr = lbData [1500, _currentitemindex];
_car = call compile _carStr;
_class = _car select 1;
lbDelete [1500, _currentitemindex];

closeDialog 0;
[_car select 0] remoteExecCall ["Server_fnc_removeGarage", 2];

_vehicle = _class createVehicle (RPF_curGarage modelToWorld [0,-5,0]);
[_car select 3, _vehicle]call Client_fnc_vehicleHitLoad;

RPF_Cars pushBack _vehicle;