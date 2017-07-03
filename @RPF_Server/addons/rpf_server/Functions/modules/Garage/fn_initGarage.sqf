/*
Author: Kerkkoh
First Edit: 2.1.2017
*/

//Store all vehicles (Mode:0)
if (((missionConfigFile >> "RPF_garageModule" >> "switch_mode") call BIS_fnc_getCfgData) isEqualTo 0) then {
["restoreGarage", 1] call ExternalS_fnc_ExtDBasync;
}; 

//Spawn all vehicles (Mode:1)
if (((missionConfigFile >> "RPF_garageModule" >> "switch_mode") call BIS_fnc_getCfgData) isEqualTo 1) then {
[] call ServerModules_fnc_initPersistency;
};

diag_log (localize "STR_RPF_GARAGE_INIT");
