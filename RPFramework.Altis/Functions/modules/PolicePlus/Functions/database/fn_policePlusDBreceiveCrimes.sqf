/*
Author: Kerkkoh
First Edit: 27.12.2016
*/
params ["_crimes"];

lbClear 1501;

{
	private ["_arr","_item"];
	_arr = toArray (_x select 0);
	if (count _arr >= 30) then {
		_arr resize 30;
		for "_i" from 1 to 3 do {_arr pushBack 46;};
	};
	_item = lbAdd [1501, toString _arr];
	lbSetData [1501, _item, str _x];
	true;
}count _crimes;

lbSetCurSel [1501, 0];
