/*
Author: Kerkkoh
First Edit: 2.1.2017
*/

diag_log (localize "STR_RPF_GARAGE_INIT");

private _menuItems = [
	[
		["cursorObject isKindOf 'Car'", "(cursorObject getVariable 'key') in RPF_vehKeys", "[]call ClientModules_fnc_nearGarage", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_GARAGE_STOREVEHICLE", "[cursorObject] call ClientModules_fnc_storeCar"]
	],
	[
		["!(isNil {cursorObject getVariable 'garage'})", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_GARAGE_OPENGARAGE", "[cursorObject] call ClientModules_fnc_openGarage"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_VEHICLES", _menuItems]call Server_fnc_addSubInteractions;

//Add function to killed EHs
RPF_vehiclesKilledHandlers pushbackUnique "ServerModules_fnc_killedHandlerGarage";

if (((configFile >> "RPF_garageModule" >> "resetVehicles") call BIS_fnc_getCfgData) == 1) then {
	[0, "resetVehicles"] call ExternalS_fnc_ExtDBquery;
};

[]spawn ServerModules_fnc_vehicleStatsUpdateLoop;
