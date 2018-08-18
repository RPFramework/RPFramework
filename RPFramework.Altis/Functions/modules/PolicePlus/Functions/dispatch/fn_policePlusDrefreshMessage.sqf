/*
Author: Kerkkoh
First Edit: 28.12.2016
*/
private ["_indx"];
_indx = lbCurSel 1503;
if (_indx isEqualTo -1) exitWith {};
	
(parseSimpleArray lbData [1503, _indx]) params ["_author","_msg"];

if (_author != "Anonymous") then {
	{
		if ((_x select 1) == _author) exitWith {
			_author = (_x select 0);
		};
	}forEach RPF_phoneContacts;
};

ctrlSetText [1003, format [(localize "STR_RPF_MODULES_POLICEPLUS_CALLERREFRESH"),_author]];
ctrlSetText [1004, _msg];
