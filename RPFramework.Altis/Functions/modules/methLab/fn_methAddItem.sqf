/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

_currentitemindex = lbCurSel 1500;
if (_currentitemindex == -1) exitWith {ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_NTA")];};
_classname = lbData [1500, _currentitemindex];
lbClear 1500;

{
	_class2 = _x select 0;
	_amount2 = _x select 1;
	if (_class2 == _classname) then {
		_amount2 = _amount2 - 1;
		_x set [1, _amount2];
	};
	if (_amount2 != 0) then {
		_stringName2 = [_class2]call Client_fnc_getWeaponName;
		_finalName2 = format ["%1 x %2", _stringName2, _amount2];
		_item2 = lbAdd [1500, _finalName2];
		lbSetData [1500, _item2, _class2];
	};
}forEach RPF_methLabPlayerItems;

lbClear 1501;

{
	_class = _x select 0;
	_amount = _x select 1;
	if (_class == _classname) then {
		_amount = _amount + 1;
		_x set [1, _amount];
	};
	if (_amount != 0) then {
		_stringName = [_class]call Client_fnc_getWeaponName;
		_finalName = format ["%1 x %2", _stringName, _amount];
		_item = lbAdd [1501, _finalName];
		lbSetData [1501, _item, _class];
	};
}forEach RPF_methLabItems;