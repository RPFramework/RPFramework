/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
params["_name", "_number", "_id"];

[0, format ["updatePhoneContact:%1:%2:%3", _name, _number, _id]] call ExternalS_fnc_ExtDBquery;
