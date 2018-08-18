/*
Author: Kerkkoh
First Edit: 29.12.2016
*/

for "_i" from 0 to 1 step 0 do {
	if (isNil {RPF_dispatching}) exitWith {};
	lbClear 1503;
	{
		private["_msg","_arr","_new"];
		_msg = _x select 1;
		_arr = toArray _msg;
		if (count _arr >= 30) then {
			_arr resize 30;
			for "_i" from 1 to 3 do {_arr pushBack 46;};
		};
		_new = lbAdd [1503, toString _arr];
		lbSetData [1503, _new, str [(_x select 0), _msg]];
		true;
	}count RPF_phoneMessages;

	sleep 1;
};
