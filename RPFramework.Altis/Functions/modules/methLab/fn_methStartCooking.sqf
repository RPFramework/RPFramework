/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_recipe", "_successProb"];
ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_APPLYINGHEAT")];
[RPF_curLab, [0.8,1,0.6], 75] remoteExec ["ClientModules_fnc_methSmoke", 0];
uiSleep 25;

if (_successProb isEqualTo 0) exitWith {
	[[(localize "STR_RPF_MODULES_METHLAB_CHECKMSGONE"), (localize "STR_RPF_MODULES_METHLAB_CHECKMSGTWO"), (localize "STR_RPF_MODULES_METHLAB_CHECKMSGTHREE")], 1]call ClientModules_fnc_methFailCooking;
};

if ((random 1) < _successProb) then {
	for "_i" from 1 to 10 step 1 do {
		if ((_i % 2) isEqualTo 0) then {
			ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_COOKING")+"."];
		} else {
			ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_COOKING")+".."];
		};
		uiSleep 5;
	};
	[_recipe]call ClientModules_fnc_methDoneCooking;
} else {
	ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_COOKINGTWO")];
	uiSleep 5;
	ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_COOKINGONE")];
	uiSleep 5;
	[[(localize "STR_RPF_MODULES_METHLAB_MSGONE"), (localize "STR_RPF_MODULES_METHLAB_MSGTWO"), (localize "STR_RPF_MODULES_METHLAB_MSGTHREE")], 2]call ClientModules_fnc_methFailCooking;
};
