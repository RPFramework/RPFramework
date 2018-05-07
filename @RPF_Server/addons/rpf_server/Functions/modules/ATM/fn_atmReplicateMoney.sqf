/*
Author: Kerkkoh
Last Edit: 24.4.2017

This is a modified version of the default replicate money for the ATM module and is supposed to fix the issues with spamming.

PARAMS
	0 - player
	1 - bankAccount
	2 - Amount of money being removed or added
	3 - withdraw / deposit
------

3 - type
	0 - withdraw
	1 (ELSE) - deposit
*/
params ["_player", "_id", "_amount", "_type"];
private["_fetch", "_res", "_newBank", "_newCash"];

_fetch = [format["playerMoney:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
_res = _fetch select 0;
_res params ["_cash", "_bank"];

_newBank = 0;
_newCash = 0;

if (_type isEqualTo 0) then {
	_newBank = _bank - _amount;
	_newCash = _cash + _amount;
} else {
	_newCash = _cash - _amount;
	_newBank = _bank + _amount;
};

if ((_newBank < 0) || (_newCash < 0)) exitWith {_player setVariable ["isDoingATMstuff", nil, true];};

[0, (format["updatePlayerMoney:%1:%2:%3", _newCash, _newBank, _id])] call ExternalS_fnc_ExtDBquery;

_player setVariable ["bank", _newBank, true];
_player setVariable ["cash", _newCash, true];

_player setVariable ["isDoingATMstuff", nil, true];
