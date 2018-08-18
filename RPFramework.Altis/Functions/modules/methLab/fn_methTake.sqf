/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

private	["_idx", "_classname"];

_idx = lbCurSel 1502;
if (_idx isEqualTo -1) exitWith {ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_NTT")];};
_classname = lbData [1502, _idx];
if (player canAdd _classname) then {
	player addItem _classname;
} else {
	hint localize "STR_RPF_CORE_CANTADDITEM";
};

lbClear 1502;

{
	private	["_class", "_amount", "_item"];
	_class = _x select 0;
	_amount = _x select 1;
	if (_class isEqualTo _classname) then {
		_amount = _amount - 1;
		_x set [1, _amount];
	};
	if (_amount != 0) then {
		_item = lbAdd [1502, format ["%1 x %2", [_class]call Client_fnc_getWeaponName, _amount]];
		lbSetData [1502, _item, _class];
	} else {
		RPF_labProducts deleteAt _forEachIndex;
	};
}forEach RPF_labProducts;
