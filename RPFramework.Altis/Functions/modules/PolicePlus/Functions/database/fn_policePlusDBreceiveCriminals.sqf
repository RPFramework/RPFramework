/*
Author: Kerkkoh
First Edit: 27.12.2016
*/
params ["_criminals"];

lbClear 1500;

{
	private _item = lbAdd [1500, _x select 1];
	lbSetData [1500, _item, str [_x select 0, _x select 2]];
	if ((_x select 2) != "no") then {
		lbSetColor [1500, _item, [1, 0, 0, 1]];
	};
	true;
}count _criminals;

lbSetCurSel [1500, 0];
