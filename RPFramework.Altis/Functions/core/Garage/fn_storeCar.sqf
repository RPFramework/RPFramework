/*
Author: Kerkkoh
First Edit: 2.12.2015
*/

params ["_ct"];

_pia = RPF_Cars find _ct;
RPF_Cars deleteAt _pia;

_garage = player getVariable "garage";
_classname = typeOf _ct;
_garage pushBack _classname;
player setVariable ["garage", _garage, true];

deleteVehicle _ct;