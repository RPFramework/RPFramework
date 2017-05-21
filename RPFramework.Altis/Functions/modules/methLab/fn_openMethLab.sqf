/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
curMethLab = _this select 0;

createDialog "methLab";

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

_ingredients = [
    "RPF_Items_ButaneCanister",
    "RPF_Items_Matches",
    "RPF_Items_Painkillers",
	"RPF_Items_Battery",
	"RPF_Items_Vitamins",
    "RPF_Items_GasCanister",
	"RPF_Items_CleanerSpray"
];

lbClear 1500;

{
	_class = _x select 0;
	_amount = _x select 1;
	if (_class in (items player)) then {
		_cnt = {_x == _class} count (items player);
		_x set [1, _cnt];
	};
}forEach RPF_methLabPlayerItems;

{
	_class2 = _x select 0;
	_amount2 = _x select 1;
	if (_amount2 != 0) then {
		_stringName2 = [_class2]call Client_fnc_getWeaponName;
		_finalName2 = format ["%1 x %2", _stringName2, _amount2];
		_item2 = lbAdd [1500, _finalName2];
		lbSetData [1500, _item2, _class2];
	};
}forEach RPF_methLabPlayerItems;

{
	_class = _x select 0;
	_amount = _x select 1;
	if (_amount != 0) then {
		_stringName = [_class]call Client_fnc_getWeaponName;
		_finalName = format ["%1 x %2", _stringName, _amount];
		_item = lbAdd [1501, _finalName];
		lbSetData [1501, _item, _class];
	};
}forEach RPF_methLabItems;

lbSetCurSel [1500, 0];

ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_READY")];