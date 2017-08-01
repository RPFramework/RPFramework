/*
Author: Kerkkoh
First Edit: 2.1.2017
*/
//Add function to killed EHs
RPF_vehiclesKilledHandlers pushbackUnique "ServerModules_fnc_killedHandlerGarage";

if (((configFile >> "RPF_garageModule" >> "resetVehicles") call BIS_fnc_getCfgData) == 1) then {
	_q = [0, "resetVehicles"] call ExternalS_fnc_ExtDBquery;
};
diag_log (localize "STR_RPF_GARAGE_INIT");