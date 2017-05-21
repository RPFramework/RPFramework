/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

if (({_x == "RPF_Mining_Minerals"} count (items player)) == 0) exitWith {};

player removeItem "RPF_Mining_Minerals";

_ignots = ["RPF_Mining_Gold", "RPF_Mining_Iron", "RPF_Mining_Copper"];

_class = selectRandom _ignots;

player addItem _class;

hint format [(localize "STR_RPF_MODULES_MINING_YOUGOT"), [_class]call Client_fnc_getWeaponName];

ctrlSetText [1000, format[(localize "STR_RPF_MODULES_MINING_YOURMINERALS"), {_x == "RPF_Mining_Minerals"} count (items player)]];
