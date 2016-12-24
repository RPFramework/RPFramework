/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
params["_name", "_number", "_id"];

_updatestr = format ["updatePhoneContact:%1:%2:%3", _name, _number, _id];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
