/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
private ["_indx","_data"];
_indx = lbCurSel 1501;
if (_indx isEqualTo -1) exitWith {};
_data = parseSimpleArray lbData [1501, _indx];

ctrlSetText [1004, format["%1/%2/%3", (_data select 1) select 1, (_data select 1) select 2, (_data select 1) select 0]];
ctrlSetText [1006, (_data select 0)];
