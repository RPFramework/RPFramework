/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
params ["_author", "_msg", "_emerg"];

if (_emerg) then {
	["TaskAssigned", ["",(localize "STR_RPF_MODULES_PHONE_NEWEMERGMSG")]] call BIS_fnc_showNotification;
} else {
	["TaskAssigned", ["",(localize "STR_RPF_MODULES_PHONE_NEWMSG")]] call BIS_fnc_showNotification;
};

RPF_phoneMessages pushBack [_author, _msg];
