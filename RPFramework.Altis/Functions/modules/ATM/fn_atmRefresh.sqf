/*
Author: Kerkkoh
First Edit: 9.10.2016

0 - remove

0 - bank
*/

params ["_balance", "_amount", "_type", "_cashOrBank"];

_math = nil;
if (_type == 0) then {
	_math = _balance - _amount;
} else {
	_math = _balance + _amount;
};

if (_cashOrBank == 0) then {
	ctrlSetText [1002, str _math];
} else {
	ctrlSetText [1004, str _math];
};