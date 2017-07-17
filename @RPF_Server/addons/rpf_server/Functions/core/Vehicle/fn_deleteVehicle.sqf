/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params [["_id",0,[0]]];

_check = [0, (format["deleteVehicle:%1", _id])] call ExternalS_fnc_ExtDBquery;
