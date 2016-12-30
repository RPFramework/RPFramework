/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5", "player getVariable ['cop', 0] > 0 || player getVariable ['ems', 0] > 0"],
		["Dispatch", "[] spawn ClientModules_fnc_policePlusDopen"]
	],
	[
		["player getVariable ['cop', 0] > 0 || player getVariable ['ems', 0] > 0", "typeOf (vehicle player) in RPF_PoliceCars || typeOf (vehicle player) in RPF_MedicCars"],
		["Manage Unit", "[] call ClientModules_fnc_policePlusDopenCar"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
