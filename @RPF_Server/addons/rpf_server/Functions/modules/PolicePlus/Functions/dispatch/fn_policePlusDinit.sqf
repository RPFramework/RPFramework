/*
Author: Kerkkoh
First Edit: 28.9.2016
*/

diag_log (localize "STR_RPF_POLICEPLUSDISPATCH_INIT");

private _menuItems = [
	[
		["!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5", "player getVariable ['cop', 0] > 0 || player getVariable ['ems', 0] > 0", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_POLICEPLUS_DISPATCH", "[] spawn ClientModules_fnc_policePlusDopen"]
	],
	[
		["player getVariable ['cop', 0] > 0 || player getVariable ['ems', 0] > 0", "typeOf (vehicle player) in ((missionConfigFile >> 'RPF_Config' >> 'policeCars') call BIS_fnc_getCfgData) || typeOf (vehicle player) in ((missionConfigFile >> 'RPF_Config' >> 'medicCars') call BIS_fnc_getCfgData)"],
		["STR_RPF_MODULES_POLICEPLUS_MANAGEUNIT", "[] call ClientModules_fnc_policePlusDopenCar"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItems]call Server_fnc_addSubInteractions;

RPF_policeCars = [];
RPF_medicCars = [];
RPF_iDNumbers = [0, 0, 0];
RPF_dispatchTasks = [];
