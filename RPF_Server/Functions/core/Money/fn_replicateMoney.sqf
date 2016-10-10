/*
Author: Kerkkoh
Last Edit: 9.10.2016

PARAMS
	0 - player
	1 - bankAccount
	2 - Amount of money being removed or added
	3 - Removing or adding money
	4 - Is it going to be cash or bank balance changed
------

type
	0 - remove
	1 (ELSE) - add

cashOrBank
	0 - bank
	1 - cash
*/
params ["_player", "_id", "_amount", "_type", "_cashOrBank"];

_balance = nil;
if (_cashOrBank == 0) then {
	_fetchstr = format ["playerBankBalance:%1", _id];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	_playeri = _fetch select 0;
	_balance = _playeri select 0;
} else {
	_fetchstr = format ["playerCashBalance:%1", _id];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	_playeri = _fetch select 0;
	_balance = _playeri select 0;
};

_newBalance = nil;
if (_type == 0) then {
	_newBalance = _balance - _amount;
} else {
	_newBalance = _balance + _amount;
};

if (_cashOrBank == 0) then {
	_insertstr = format ["updatePlayerBalance:%1:%2", _newBalance, _id];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
	_player setVariable ["bank", _newBalance, true];
} else {
	_insertstr = format ["updatePlayerCash:%1:%2", _newBalance, _id];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
	_player setVariable ["cash", _newBalance, true];
};
