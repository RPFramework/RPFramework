/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

_indx = lbCurSel 1503;
if (_indx == -1) exitWith {};
_str = lbData [1503, _indx];
_data = call compile _str;

_author = _data select 0;
_msg = _data select 1;

if (_author != "Anonymous") then {
	{
		if ((_x select 1) == _author) exitWith {
			_author = (_x select 0);
		};
	}forEach RPF_phoneContacts;
};

ctrlSetText [1003, format [(localize "STR_RPF_MODULES_POLICEPLUS_CALLERREFRESH"),_author]];
ctrlSetText [1004, _msg];
