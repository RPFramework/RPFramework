/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

params [["_rowID",0], ["_isInGarage",false,[true]], ["_hit",nil]];


[1,(format["updateVehicle:%1:%2", parseNumber(_isInGarage),_rowID])] call ExternalS_fnc_ExtDBquery;