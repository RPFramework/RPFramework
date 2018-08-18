/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
private ["_indx","_number"];
_indx = lbCurSel 2100;
if (_indx isEqualTo -1) exitWith {};
_number = (parseSimpleArray lbData [2100, _indx]) select 0;

ctrlSetText [1400, lbText[2100, _indx]];
ctrlSetText [1401, _number];
ctrlSetText [1403, _number];
