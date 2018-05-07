/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

params ["_id", "_owner", "_price"];

[0, format ["updateHouse:%1:%2:%3", _owner, _price, _id]] call ExternalS_fnc_ExtDBquery;
