/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5", "player getVariable ['cop', 0] > 0 || player getVariable ['ems', 0] > 0", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_POLICEPLUS_DISPATCH"), "[] spawn ClientModules_fnc_policePlusDopen"]
	],
	[
		["player getVariable ['cop', 0] > 0 || player getVariable ['ems', 0] > 0", "typeOf (vehicle player) in ((missionConfigFile >> 'RPF_Config' >> 'policeCars') call BIS_fnc_getCfgData) || typeOf (vehicle player) in ((missionConfigFile >> 'RPF_Config' >> 'medicCars') call BIS_fnc_getCfgData)"],
		[(localize "STR_RPF_MODULES_POLICEPLUS_MANAGEUNIT"), "[] call ClientModules_fnc_policePlusDopenCar"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
