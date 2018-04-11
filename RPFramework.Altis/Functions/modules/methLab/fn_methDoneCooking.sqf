/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_recipe"];
private ["_amount", "_product"];

RPF_labItems = [];
RPF_labPlayerItems = [];

lbClear 1500;
lbClear 1501;

hint (localize "STR_RPF_MODULES_METHLAB_SUCCESS");

_amount = 2 + round(random 10);

_product = lbAdd [1502, format ["%1 x %2", [_recipe]call Client_fnc_getWeaponName, _amount]];
lbSetData [1502, _product, _recipe];

RPF_labProducts = [
	[_recipe, _amount]
];

ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_SUCCESS")];