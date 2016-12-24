/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
params ["_author", "_msg", "_emerg"];

if (_emerg) then {
	["TaskAssigned", ["","New 911 Message!"]] call BIS_fnc_showNotification;
} else {
	["TaskAssigned", ["","New Message!"]] call BIS_fnc_showNotification;
};

RPF_phoneMessages pushBack [_author, _msg];
