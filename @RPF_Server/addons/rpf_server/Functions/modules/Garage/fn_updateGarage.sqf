/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

params ["_class", "_hit", "_player"];

_insert = [0, (format["insertVehicle:%1:%2:%3", _class, getPlayerUID _player, _hit])] call ExternalS_fnc_ExtDBquery;