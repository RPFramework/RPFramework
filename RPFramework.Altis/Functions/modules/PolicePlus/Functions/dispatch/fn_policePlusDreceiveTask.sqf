/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

params ["_name", "_pos"];

deleteMarkerLocal "dispatchMarker";

private _dm = createMarkerLocal ["dispatchMarker", _pos];
_dm setMarkerShapeLocal "ICON";
_dm setMarkerTypeLocal "hd_objective";
_dm setMarkerTextLocal "Dispatch Location";
_dm setMarkerColorLocal "ColorRed";

["TaskAssigned", ["",_name]] call BIS_fnc_showNotification;
playSound "dispatchSound";
