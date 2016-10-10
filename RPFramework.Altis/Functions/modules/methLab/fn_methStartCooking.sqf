/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_recipe"];
ctrlSetText [1000, "You're applying heat..."];
sleep 25;

_cts = 0;
if (_recipe == 1) then {
	_cts = 90;
} else {
	_cts = 99;
};

_rand = round (random 100);
if (_rand < _cts) then {
	ctrlSetText [1000, "Cooking.."];
	sleep 5;
	ctrlSetText [1000, "Cooking..."];
	sleep 5;
	ctrlSetText [1000, "Cooking...."];
	sleep 5;
	ctrlSetText [1000, "Cooking....."];
	sleep 5;
	ctrlSetText [1000, "Cooking......"];
	sleep 5;
	ctrlSetText [1000, "Cooking.."];
	sleep 5;
	ctrlSetText [1000, "Cooking..."];
	sleep 5;
	ctrlSetText [1000, "Cooking...."];
	sleep 5;
	ctrlSetText [1000, "Cooking....."];
	sleep 5;
	ctrlSetText [1000, "Cooking......"];
	sleep 5;
	ctrlSetText [1000, "Cooking......."];
	sleep 5;
	[]call ClientModules_fnc_methDoneCooking;
} else {
	ctrlSetText [1000, "Cooking.."];
	sleep 5;
	ctrlSetText [1000, "Cooking..."];
	sleep 5;
	[["You accidentally nudge the flask enough to mess up the cooking.", "Some dirt has gone into the flask and it's starting to produce smoke and flames.", "Applying heat doesn't star the chemical reaction and only burns the ingredients. Seems like an unlucky chemical error."], 2]call ClientModules_fnc_methFailCooking;
};