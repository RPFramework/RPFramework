/*
Author: Kerkkoh

First Edit: 17.4.2016
*/

_account = parseNumber (ctrlText 1402);
_amount = parseNumber (ctrlText 1401);

closeDialog 0;

_success1 = false;
_success2 = false;

{
	
	_playerAccount = _x getVariable "bankAccount";
	
	if (_playerAccount == _account) then 
	{
	
		_check = [2, _amount] call Client_fnc_checkMoney;
		if (_check) then 
		{
		
			[_amount] call Client_fnc_removeBank;
			[[_amount], "Client_fnc_addBank", _x, false] spawn BIS_fnc_MP;
			_str = format ["You have received %1 from %2", _amount, name player];
			[[_str], "Client_fnc_hintMP", _x, false] spawn BIS_fnc_MP;
			_success2 = true;
			
		};
		_success1 = true;
		
	};
	
}forEach allPlayers;

switch (true) do
{
	case (_success1 && _success2): {hint "Money sent!";};
	case (_success1 && !_success2): {hint "Not enough money!";};
	case (!_success1 && !_success2): {hint "Account not found or owner not present!";};
	default {hint "Something went wrong!";};
};