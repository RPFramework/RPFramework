/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
RPF_curLab = _this select 0;

createDialog "methLab";

RPF_labItems = [];
RPF_labPlayerItems = [];

lbClear 1500;
lbClear 1501;

{
	private ["_y", "_amount", "_item"];
	_y = _x;
	if (_y in (items player)) then {
		_amount = {_x isEqualTo _y} count (items player);
		RPF_labPlayerItems pushBackUnique [_y, _amount];
		_item = lbAdd [1500, format ["%1 x %2", [_y]call Client_fnc_getWeaponName, _amount]];
		lbSetData [1500, _item, _y];
	};
	true;
}count getArray(missionConfigFile >> "RPF_methlabModule" >> "ingredients");

if (!(isNil "RPF_labProducts")) then {
	{
		private	["_class", "_item"];
		_class = _x select 0;
		_item = lbAdd [1502, format ["%1 x %2", [_class]call Client_fnc_getWeaponName,  _x select 1]];
		lbSetData [1502, _item, _class];
		true;
	}count RPF_labProducts;
};

lbSetCurSel [1500, 0];

ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_READY")];
