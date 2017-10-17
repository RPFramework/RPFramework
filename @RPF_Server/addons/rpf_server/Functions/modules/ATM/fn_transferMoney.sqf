/*
Author: Kerkkoh
Last Edit: 6.9.2016
*/
params ["_finalAccount", "_amount", "_player"];

_checkstr = format ["existBankAccount:%1", _finalAccount];
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
_booli = (_check select 0) select 0;

_fetch = [(format["playerBankBalance:%1", (_player getVariable "bankAccount")]), 2] call ExternalS_fnc_ExtDBasync;

if ((((_fetch select 0) select 0) - _amount) < 0) exitWith {
	["STR_RPF_ATM_TRANSFER_NOTENOUGHBANK"] remoteExecCall ["Client_fnc_hintMP", _player];
};

if (_booli) then {
	_found = objNull;
	{
		if ((_x getVariable "bankAccount") == _finalAccount) then {
			_found = _x;
		};
	}forEach allPlayers;
	if (isNull _found) then {
		[_finalAccount, _amount]call ServerModules_fnc_atmSendMoney;
	} else {
		_bankAccount = _found getVariable "bankAccount";
		[_found, _bankAccount, _amount, 1, 0]call Server_fnc_replicateMoney;
		["STR_RPF_ATM_TRANSFER_RECEIVED"] remoteExecCall ["Client_fnc_hintMP", _found];
	};
	
	[_player, (_player getVariable "bankAccount"), _amount, 0, 0]call Server_fnc_replicateMoney;

	["STR_RPF_ATM_TRANSFER_COMPLETED"] remoteExecCall ["Client_fnc_hintMP", _player];
} else {
	["STR_RPF_ATM_TRANSFER_ACCNOTFOUND"] remoteExecCall ["Client_fnc_hintMP", _player];
};

_player setVariable ["isDoingATMstuff", nil, true];
