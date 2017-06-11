/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

params ["_id", "_owner", "_price"];

_updatestr = format ["updateHouse:%1:%2:%3", _owner, _price, _id];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
