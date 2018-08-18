/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
private ["_indx","_data"];
_indx = lbCurSel 1500;
if (_indx == -1) exitWith {};
_data = parseSimpleArray lbData [1500, _indx];

_data params ["_author","_msg"];

if (_author != "Anonymous") then {
	{
		if ((_x select 1) isEqualTo _author) exitWith {
			_author = (_x select 0);
		};
	}forEach RPF_phoneContacts;
};

ctrlSetText [1001, _author];
ctrlSetText [1002, _msg];
