/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
_name = format["%1%2%3", "%", ctrlText 1400, "%"];

[player, _name] remoteExecCall ["ServerModules_fnc_policePlusDBrun", 2];