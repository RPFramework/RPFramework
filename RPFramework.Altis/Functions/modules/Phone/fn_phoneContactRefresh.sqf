/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
_indx = lbCurSel 2100;
if (_indx == -1) exitWith {};
_str = lbData [2100, _indx];
_arr = call compile _str;
_number = _arr select 0;

ctrlSetText [1400, lbText[2100, _indx]];
ctrlSetText [1401, _number];
ctrlSetText [1403, _number];
