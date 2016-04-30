/*
Author: Kerkkoh
First Edit: 2.12.2015
*/

_currentitemindex = lbCurSel 1500;
if (_currentitemindex == -1) exitWith {};
_car = lbData [1500, _currentitemindex];
lbDelete [1500, _currentitemindex];

closeDialog 0;
_garage = player getVariable "garage";
_pia = _garage find _car;
_garage deleteAt _pia;
player setVariable ["garage", _garage, true];

_vehicle = _car createVehicle (RPF_curGarage modelToWorld [0,-5,0]);

RPF_Cars pushBack _vehicle;