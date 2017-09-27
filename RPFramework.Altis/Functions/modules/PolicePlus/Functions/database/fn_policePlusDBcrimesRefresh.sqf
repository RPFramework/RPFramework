/*
Author: Kerkkoh
First Edit: 27.9.2016
*/

_indx = lbCurSel 1501;
if (_indx == -1) exitWith {};
_str = lbData [1501, _indx];
_data = parseSimpleArray _str;

_format = format["%1/%2/%3", (_data select 1) select 1, (_data select 1) select 2, (_data select 1) select 0];

ctrlSetText [1004, _format];
ctrlSetText [1006, (_data select 0)];
