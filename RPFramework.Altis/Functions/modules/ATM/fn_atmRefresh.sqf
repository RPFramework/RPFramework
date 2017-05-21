/*
Author: Kerkkoh
First Edit: 9.10.2016

- type
	0 - withdraw
	1 - deposit
*/

params ["_amount", "_type"];

_bank = player getVariable "bank";
_cash = player getVariable "cash";

_newBank = 0;
_newCash = 0;
if (_type == 0) then {
	_newBank = _bank - _amount;
	_newCash = _cash + _amount;
} else {
	_newCash = _cash - _amount;
	_newBank = _bank + _amount;
};

if ((_newBank < 0) || (_newCash < 0)) exitWith {
	if (_type == 0) then {
		hint (localize "STR_RPF_MODULES_ATM_NOTENOUGHBALANCE");
	} else {
		hint (localize "STR_RPF_MODULES_ATM_NOTENOUGHCASH");
	};
};

ctrlSetText [1002, str _newBank];
ctrlSetText [1004, str _newCash];
