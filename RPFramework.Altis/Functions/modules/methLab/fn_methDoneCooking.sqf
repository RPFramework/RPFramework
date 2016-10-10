/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
RPF_methLabItems = [
    ["RPF_Items_ButaneCanister", 0],
    ["RPF_Items_Matches", 0],
    ["RPF_Items_Painkillers", 0],
	["RPF_Items_Battery", 0],
	["RPF_Items_Vitamins", 0],
    ["RPF_Items_GasCanister", 0],
	["RPF_Items_CleanerSpray", 0]
];
RPF_methLabPlayerItems = [
    ["RPF_Items_ButaneCanister", 0],
    ["RPF_Items_Matches", 0],
    ["RPF_Items_Painkillers", 0],
	["RPF_Items_Battery", 0],
	["RPF_Items_Vitamins", 0],
    ["RPF_Items_GasCanister", 0],
	["RPF_Items_CleanerSpray", 0]
];

lbClear 1501;

hint "You notice vapors raising from the flask revealing beautiful blue crystals.";

_amount = 5 + round(random 10);

_stringName = ["RPF_Items_Meth"]call Client_fnc_getWeaponName;
_finalName = format ["%1 x %2", _stringName, _amount];
_product = lbAdd [1502, _finalName];
lbSetData [1502, _product, "RPF_Items_Meth"];

RPF_methLabProducts = [
	["RPF_Items_Meth", _amount]
];

ctrlSetText [1000, "Success!"];