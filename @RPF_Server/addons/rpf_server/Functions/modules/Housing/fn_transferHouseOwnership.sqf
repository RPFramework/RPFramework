/*
Author: Kerkkoh
First Edit: 26.12.2016

Info: This is a mess of a function. Just like, don't touch it, and it should, SHOULD, work.
*/
params ["_house", "_player"];

_class = typeOf _house;
_pos = getPos _house;
_owner = _house getVariable "owner";
_amount = _house getVariable "price";
_id = _house getVariable "id";

_fetchstr = format ["houseOwnerBankAccount:%1", _owner];
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
_res = _fetch select 0;
_finalAccount = _res select 0;

_found = objNull;
{
	if ((_x getVariable "bankAccount") == _finalAccount) then {
		_found = _x;
	};
}forEach allPlayers;

if (isNull _found) then {
	_qbankbalancestr = format ["playerBankBalance:%1", _finalAccount];
	_qbankbalance = [_qbankbalancestr, 2] call ExternalS_fnc_ExtDBasync;
	_qplayer = _qbankbalance select 0;
	_balance = _qplayer select 0;

	_newBalance = _balance + _amount;

	_insertstr = format ["updatePlayerBalance:%1:%2", _newBalance, _finalAccount];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
} else {
	_bankAccount = _found getVariable "bankAccount";
	[_found, _bankAccount, _amount, 1, 0]call Server_fnc_replicateMoney;
	["STR_RPF_HOUSING_RECEIVEDMONEY"] remoteExecCall ["Client_fnc_hintMP", _found];
};

_pacc = _player getVariable "bankAccount";
[_player, _pacc, _amount, 0, 0]call Server_fnc_replicateMoney;

[_id, getPlayerUID _player, -1]call ServerModules_fnc_updateHouse;

_house setVariable ["owner", getPlayerUID _player, true];
_house setVariable ["price", nil, true];

["STR_RPF_HOUSING_WELCOME"] remoteExecCall ["Client_fnc_hintMP", _player];