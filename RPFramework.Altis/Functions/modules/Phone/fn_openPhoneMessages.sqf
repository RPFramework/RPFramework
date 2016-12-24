/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
closeDialog 0;
createDialog "phoneMessages";

lbClear 1500;
{
	_auth = _x select 0;
	_msg = _x select 1;
	
	_arr = toArray _msg;
	if (count _arr >= 30) then {
		_arr resize 30;
		for "_i" from 1 to 3 do {_arr pushBack 46;};
	};
	_shortMsg = toString _arr;
	
	_new = lbAdd [1500, _shortMsg];
	lbSetData [1500, _new, str [_auth, _msg]];
}forEach RPF_phoneMessages;

lbSetCurSel [1500, 0];
