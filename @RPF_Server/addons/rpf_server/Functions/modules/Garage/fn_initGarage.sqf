/*
Author: Kerkkoh
First Edit: 2.1.2017
*/

if (missionConfigFile >> "RPF_garageModule" >> "switch_mode" isEqualTo 1) then {
[] call ServerModules_fnc_restoreGarage;
};

diag_log (localize "STR_RPF_GARAGE_INIT");
