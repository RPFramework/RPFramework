/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
closeDialog 0;
createDialog "phoneMessages";

lbClear 1500;
{
	private ["_auth","_msg","_arr","_new"];
	_auth = _x select 0;
	_msg = _x select 1;

	_arr = toArray _msg;
	if (count _arr >= 30) then {
		_arr resize 30;
		for "_i" from 1 to 3 do {_arr pushBack 46;};
	};

	_new = lbAdd [1500, toString _arr];
	lbSetData [1500, _new, str [_auth, _msg]];
	true;
}count RPF_phoneMessages;

lbSetCurSel [1500, 0];
