/*
Author: Kerkkoh
First Edit: 26.11.2015
*/
params ["_distance", "_area"];

private _return = ((player distance (getMarkerPos _area)) <= _distance);

_return;
