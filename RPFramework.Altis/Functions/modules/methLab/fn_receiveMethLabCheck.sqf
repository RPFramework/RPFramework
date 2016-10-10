/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_recipe"];

if (_recipe == 0) then {
	[["You managed to produce some green liquid like substance that is now about to catch fire. This is not definitely meth.", "Green smoke starts coming out of the cooking flask and some dark green slime is left in the flask. This is definitely not meth", "You can notice flames and green smoke coming out of the cooking flask and some burned substance is left in the flask. This is definitely not meth."], 1]call ClientModules_fnc_methFailCooking;
} else {
	[_recipe]spawn ClientModules_fnc_methStartCooking;
};