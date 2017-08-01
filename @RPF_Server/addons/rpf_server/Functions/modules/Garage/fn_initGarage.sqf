/*
Author: Kerkkoh
First Edit: 2.1.2017
*/
if (((missionConfigFile >> "RPF_garageModule" >> "resetVehicles") call BIS_fnc_getCfgData)) then {
    // Set to all vehicles' rows inGarage = 1
    [1, "resetVehicles"] call ExternalS_fnc_ExtDBquery;
};
diag_log (localize "STR_RPF_GARAGE_INIT");