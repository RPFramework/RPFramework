/*
Author: Kerkkoh
First Edit: 24.4.2016
*/
_index = lbCurSel 1500;
if (_index == -1) exitWith {};
_dataS = lbData [1500, _index];
_data = call compile _dataS;
_item = _data select 0;
_amount = _data select 1;

{
	_class = _x select 0;
	if (_class == _item) then {
		_action = _x select 1;
		call compile _action;
	};
}forEach RPF_Usables;

player removeItem _item;

lbClear 1500;
_items = [items player]call Client_fnc_sortArray;
{
	_name = [_x select 0]call Client_fnc_getWeaponName;
	_itemString = format ["%1 x %2", _name, _x select 1];
	_shopItem = lbAdd [1500, _itemString];
	lbSetData [1500, _shopItem, str _x];
}forEach _items;
_control = (findDisplay 1019) displayCtrl 1500;
lbSortByValue _control;

false