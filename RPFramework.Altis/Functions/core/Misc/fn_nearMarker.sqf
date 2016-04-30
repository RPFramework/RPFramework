/*
Author: Kerkkoh
First Edit: 26.11.2015
*/
params ["_distance", "_area"];
_return = false;
if ((player distance (getMarkerPos _area)) <= _distance) then {
_return = true;
};
_return;