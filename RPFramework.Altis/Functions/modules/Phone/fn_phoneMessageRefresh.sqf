/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
_indx = lbCurSel 1500;
if (_indx == -1) exitWith {};
_str = lbData [1500, _indx];
_data = parseSimpleArray _str;

_author = _data select 0;
_msg = _data select 1;

if (_author != "Anonymous") then {
	{
		if ((_x select 1) == _author) exitWith {
			_author = (_x select 0);
		};
	}forEach RPF_phoneContacts;
};

ctrlSetText [1001, _author];
ctrlSetText [1002, _msg];
