/*
Author: Kerkkoh
First Edit: 6.12.2016
*/

params ["_prisoners"];

{
	if (!(isNull _x)) then {
		private _item = lbAdd [1500, name _x];
		lbSetData [1500, _item, str _forEachIndex];
	};
}forEach _prisoners;

RPF_Prisoners = _prisoners;

lbSetCurSel [1500, 0];
