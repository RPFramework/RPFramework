/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

if (({_x == "RPF_Mining_Minerals"} count (items player)) == 0) exitWith {};

player removeItem "RPF_Mining_Minerals";

_ignots = ["RPF_Mining_Gold", "RPF_Mining_Iron", "RPF_Mining_Copper"];

_class = selectRandom _ignots;

player addItem _class;

hint format ["You got a %1", [_class]call Client_fnc_getWeaponName];

ctrlSetText [1000, format["You have %1 minerals", {_x == "RPF_Mining_Minerals"} count (items player)]];
