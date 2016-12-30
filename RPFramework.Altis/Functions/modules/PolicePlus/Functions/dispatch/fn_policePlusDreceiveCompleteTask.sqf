/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

params ["_task"];

deleteMarkerLocal "dispatchMarker";

["TaskSucceeded",["",_task]] call BIS_fnc_showNotification;
playSound "dispatchSound";
