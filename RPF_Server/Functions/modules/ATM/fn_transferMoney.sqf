/*
Author: Kerkkoh
Last Edit: 6.9.2016
*/
params ["_finalAccount", "_amount", "_player"];

_checkstr = format ["existBankAccount:%1", _finalAccount];
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
_booli = (_check select 0) select 0;

if (_booli) then {
	_playerBank = _player getVariable "bank";
	_canRemove = false;
	_math = _playerBank - _amount;
	if (_math >= 0) then {
		[_playerBank, _amount, 0, 0] remoteExecCall ["ClientModules_fnc_atmRefresh", _player];
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
			["You have received money!"] remoteExecCall ["Client_fnc_hintMP", _found];
		};
		
		_pacc = _player getVariable "bankAccount";
		[_player, _pacc, _amount, 0, 0]call Server_fnc_replicateMoney;

		["Transfer completed!"] remoteExecCall ["Client_fnc_hintMP", _player];
	} else {
		["You don't have enough money in your bank account to do this!"] remoteExecCall ["Client_fnc_hintMP", _player];
	};
} else {
	["Account not found!"] remoteExecCall ["Client_fnc_hintMP", _player];
};