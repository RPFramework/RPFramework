/*
Author: Kerkkoh
First Edit: 9.10.2016
Last Edit: 26.02.2018

- type
	0 - withdraw
	1 - deposit
*/

params ["_amount", "_type"];
private ["_bank", "_cash", "_newBank", "_newCash"];

_bank = player getVariable "bank";
_cash = player getVariable "cash";

_newBank = 0;
_newCash = 0;
if (_type isEqualTo 0) then {
	_newBank = _bank - _amount;
	_newCash = _cash + _amount;
} else {
	_newCash = _cash - _amount;
	_newBank = _bank + _amount;
};

if ((_newBank < 0) || (_newCash < 0)) exitWith {
	hint (localize (["STR_RPF_MODULES_ATM_NOTENOUGHCASH", "STR_RPF_MODULES_ATM_NOTENOUGHBALANCE"] select (_type == 0)));
};


ctrlSetText [1002,([_newBank] call BIS_fnc_numberText)];
ctrlSetText [1004,([_newCash] call BIS_fnc_numberText)];
