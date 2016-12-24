/*
Author: Kerkkoh
Last Edit: 23.12.2016
*/
_phone = "";

for "_i" from 0 to 1 step 0 do {
	_phoneArr = [202];
	for "_x" from 1 to 7 step 1 do {
		_phoneArr pushBack floor (random 10);
	};
	_phone = _phoneArr joinString "";

	_qstr = format ["existPhone:%1", _phone];
	_q = [0, _qstr] call ExternalS_fnc_ExtDBquery;
	_exists = (_q select 0) select 0;

	if (!_exists) exitWith {};
};

_phone
