/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_recipe"];

if (_recipe == 0) then {
	[[(localize "STR_RPF_MODULES_METHLAB_CHECKMSGONE"), (localize "STR_RPF_MODULES_METHLAB_CHECKMSGTWO"), (localize "STR_RPF_MODULES_METHLAB_CHECKMSGTHREE")], 1]call ClientModules_fnc_methFailCooking;
} else {
	[_recipe]spawn ClientModules_fnc_methStartCooking;
};