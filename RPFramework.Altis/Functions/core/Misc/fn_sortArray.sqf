/*
Author: Kerkkoh
First Edit: 23.4.2016

Additional info:
Array with multiple same strings into an array of arrays with the string and number of strings in the array

_passedArray = ["Item1", "Item1", "Item1", "Item2"]
>>> _return = [["Item1", 3], ["Item2", 1]]
*/
params ["_array"];
private["_return", "_curClass", "_found"];
_return = [];
{
	_curClass = _x;
	_found = false;
	{
		if (_curClass isEqualTo (_x select 0)) then {
			_found = true;
		};
		true;
	}count _return;
	if (!_found) then {
		_return pushBack [_curClass, {_x == _curClass} count _array];
	};
	true;
}count _array;

_return
