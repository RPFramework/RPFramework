/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

if ((lbCurSel 1500) == -1) exitWith {};
_dataS = lbData [1500, lbCurSel 1500];
if (isNil {_dataS}) exitWith {};
_data = parseSimpleArray _dataS;
_item = _data select 0;

{
	if ((_x select 0) == _item) then {
		call compile (_x select 1);
	};
}forEach RPF_Usables;

player removeItem _item;

lbClear 1500;

{
	_y = _x;
	{
		if ((_y select 0) == (_x select 0)) then {
			_shopItem = lbAdd [1500, format["%1 x %2", [_y select 0]call Client_fnc_getWeaponName, _y select 1]];
			lbSetData [1500, _shopItem, str _y];
		};
	}forEach RPF_Usables;
}forEach ([items player]call Client_fnc_sortArray);

lbSortByValue ((findDisplay 1019) displayCtrl 1500);
