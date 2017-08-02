/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_key"];

_check = [0, (format["deleteVehicle:%1", _key])] call ExternalS_fnc_ExtDBquery;
