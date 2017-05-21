/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
_currentitemindex = lbCurSel 1502;
if (_currentitemindex == -1) exitWith {ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_NTT")];};
_classname = lbData [1502, _currentitemindex];
player addItem _classname;

lbClear 1502;

{
	_class = _x select 0;
	_amount = _x select 1;
	if (_class == _classname) then {
		_amount = _amount - 1;
		_x set [1, _amount];
	};
	if (_amount != 0) then {
		_stringName = [_class]call Client_fnc_getWeaponName;
		_finalName = format ["%1 x %2", _stringName, _amount];
		_item = lbAdd [1502, _finalName];
		lbSetData [1502, _item, _class];
	};
}forEach RPF_methLabProducts;