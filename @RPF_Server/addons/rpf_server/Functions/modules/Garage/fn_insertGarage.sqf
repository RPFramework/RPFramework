/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

params ["_class", "_hit", "_player", "_krand"];

_insert = [0, (format["insertVehicle:%1:%2:%3:%4", _class, getPlayerUID _player, _hit, _krand])] call ExternalS_fnc_ExtDBquery;