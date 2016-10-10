/*
Author: Kerkkoh
Last Edit: 6.9.2016
*/
params ["_id", "_amount"];

_fetchstr = format ["playerBankBalance:%1", _id];
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
_playeri = _fetch select 0;
_balance = _playeri select 0;

_newBalance = _balance + _amount;

_insertstr = format ["updatePlayerBalance:%1:%2", _newBalance, _id];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
