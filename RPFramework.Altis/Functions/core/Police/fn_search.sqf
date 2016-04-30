/*
Author: Kerkkoh
First Edit: 24.4.2016
*/
params ["_ct"];

_items = [items _ct]call Client_fnc_sortArray;
_magazines = [magazines _ct]call Client_fnc_sortArray;
_weapons = [weapons _ct]call Client_fnc_sortArray;

_finalitemarray = [];
{
	_name = [_x select 0]call Client_fnc_getWeaponName;
	_itemString = format ["%1 x %2<br/>", _name, _x select 1];
	_finalitemarray pushBack _itemString;
}forEach _items;
_itemsFinal = _finalitemarray joinString "";

_finalmagazinearray = [];
{
	_name = [_x select 0]call Client_fnc_getMagazineName;
	_magazineString = format ["%1 x %2<br/>", _name, _x select 1];
	_finalmagazinearray pushBack _magazineString;
}forEach _magazines;
_magazinesFinal = _finalmagazinearray joinString "";

_finalweaponarray = [];
{
	_name = [_x select 0]call Client_fnc_getWeaponName;
	_weaponString = format ["%1 x %2<br/>", _name, _x select 1];
	_finalweaponarray pushBack _weaponString;
}forEach _weapons;
_weaponsFinal = _finalweaponarray joinString "";

_array = [_itemsFinal, _magazinesFinal, _weaponsFinal];

_allStuff = _array joinString "";

_finalstr = parseText format ["Searched player has:<br/>%1", _allStuff];

hint _finalstr;