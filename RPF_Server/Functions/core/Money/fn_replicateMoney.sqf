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

3 - type
	0 - remove
	1 (ELSE) - add

4 - cashOrBank
	0 - bank
	1 - cash
*/
params ["_player", "_id", "_amount", "_type", "_cashOrBank"];

_fetch = [];
if (_cashOrBank == 0) then {
	_fetch = [(format["playerBankBalance:%1", _id]), 2] call ExternalS_fnc_ExtDBasync;
} else {
	_fetch = [(format["playerCashBalance:%1", _id]), 2] call ExternalS_fnc_ExtDBasync;
};

_newBalance = nil;
if (_type == 0) then {
	_newBalance = ((_fetch select 0) select 0) - _amount;
} else {
	_newBalance = ((_fetch select 0) select 0) + _amount;
};

if (_cashOrBank == 0) then {
	_insert = [0, (format["updatePlayerBalance:%1:%2", _newBalance, _id])] call ExternalS_fnc_ExtDBquery;
	_player setVariable ["bank", _newBalance, true];
} else {
	_insert = [0, (format["updatePlayerCash:%1:%2", _newBalance, _id])] call ExternalS_fnc_ExtDBquery;
	_player setVariable ["cash", _newBalance, true];
};
