/*
Author: Kerkkoh
First Edit: 23.4.2016

Additional info:
Array with multiple same strings into an array of arrays with the string and number of strings in the array

_passedArray = ["Item1", "Item1", "Item1", "Item2"]
>>> _return = [["Item1", 3], ["Item2", 1]]
	_item1 = _returned select 0;
	hint format ["%1 x %2", _item1 select 0, _item1 select 1];
	>>> Item1 x 3
*/
params ["_array"];
_return = [];
{
	_curClass = _x;
	_found = false;
	{
		_classname = _x select 0;
			if (_curClass == _classname) then {
				_found = true;
			};
	}forEach _return;
	if (!(_found)) then {
		_result = {_x == _curClass} count _array;
		_return pushBack [_curClass, _result];
	};
}forEach _array;

_return