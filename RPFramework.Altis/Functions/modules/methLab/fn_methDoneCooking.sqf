/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_recipe"];

RPF_labItems = [];
RPF_labPlayerItems = [];

lbClear 1500;
lbClear 1501;

hint (localize "STR_RPF_MODULES_METHLAB_SUCCESS");

private _amount = 2 + round(random 10);

if (isNil{RPF_labProducts}) then {
	RPF_labProducts = [[_recipe, _amount]];
} else {
	RPF_labProducts pushBack [_recipe, _amount];
};

closeDialog 0;
RPF_curLab setVariable ["labActive", false, true];

[RPF_curLab]call ClientModules_fnc_openMethLab;

ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_SUCCESS")];
