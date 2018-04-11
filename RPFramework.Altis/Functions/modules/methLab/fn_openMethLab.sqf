/*
Author: Kerkkoh
First Edit: 22.9.2016
*/
RPF_curLab = _this select 0;

createDialog "methLab";

RPF_labItems = [];
RPF_labPlayerItems = [];

private _ingredients = [
	"RPF_Items_Battery",
	"RPF_Items_ButaneCanister",
	"RPF_Items_CleanerSpray",
	"RPF_Items_Cocaleaf",
	"RPF_Items_GasCanister",
	"RPF_Items_Matches",
	"RPF_Items_Painkillers",
	"RPF_Items_Poppy",
	"RPF_Items_Vitamins"
];


lbClear 1500;
lbClear 1501;

{
	private ["_y", "_amount"];
	_y = _x;
	if (_y in (items player)) then {
		_amount = {_x == _y} count (items player);
		RPF_labPlayerItems pushBackUnique [_y, _amount];
		_item = lbAdd [1500, format ["%1 x %2", [_y]call Client_fnc_getWeaponName, _amount]];
		lbSetData [1500, _item, _y];
	};
}forEach _ingredients;

lbSetCurSel [1500, 0];

ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_READY")];