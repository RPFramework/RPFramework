/*
Author: Kerkkoh
First Edit: 24.4.2016
*/
createDialog "useItem";

_items = [items player]call Client_fnc_sortArray;

{
	_name = [_x select 0]call Client_fnc_getWeaponName;
	_itemString = format ["%1 x %2", _name, _x select 1];
	_shopItem = lbAdd [1500, _itemString];
	lbSetData [1500, _shopItem, str _x];
}forEach _items;
_control = (findDisplay 1019) displayCtrl 1500;
lbSortByValue _control;

lbSetCurSel [1500, 0];
