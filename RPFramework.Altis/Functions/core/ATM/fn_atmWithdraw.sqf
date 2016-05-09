/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
_amount = parseNumber (ctrlText 1400);


if (_amount > 0) then 
{

	_check = [2, _amount] call Client_fnc_checkMoney;
	if (_check) then 
	{
	
		[_amount] call Client_fnc_removeBank;
		[_amount] call Client_fnc_addCash;
		hint "Successfully withdrawed some cash!";
		
		_bank = str (player getVariable "bank"); 
		ctrlSetText [1002, _bank];

		_cash = str (player getVariable "cash"); 
		ctrlSetText [1004, _cash];
	} else {
	
		hint "Not enough bank balance!";
	
	};
	
}
 else  
{

	hint "Withdrawal amount must be more than $0!";
	
};