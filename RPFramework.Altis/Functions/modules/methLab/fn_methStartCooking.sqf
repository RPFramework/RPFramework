/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_recipe"];
ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_APPLYINGHEAT")];
sleep 25;

_cts = 0;
if (_recipe == 1) then {
	_cts = 90;
} else {
	_cts = 99;
};

_rand = round (random 100);
if (_rand < _cts) then {
	for "_i" from 1 to 10 step 1 do {
		if (_i % 2) then {
			ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_COOKINGONE")];
		} else {
			ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_COOKINGTWO")];
		};
		sleep 5;
	};
	[]call ClientModules_fnc_methDoneCooking;
} else {
	ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_COOKINGTWO")];
	sleep 5;
	ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_COOKINGONE")];
	sleep 5;
	[[(localize "STR_RPF_MODULES_METHLAB_MSGONE"), (localize "STR_RPF_MODULES_METHLAB_MSGTWO"), (localize "STR_RPF_MODULES_METHLAB_MSGTHREE")], 2]call ClientModules_fnc_methFailCooking;
};