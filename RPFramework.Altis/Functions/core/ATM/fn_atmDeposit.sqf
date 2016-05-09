/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
_amount = parseNumber (ctrlText 1400);


if (_amount > 0) then 
{

	_check = [1, _amount] call Client_fnc_checkMoney;
	if (_check) then 
	{
	
		[_amount] call Client_fnc_removeCash;
		[_amount] call Client_fnc_addBank;
		hint "Successfully deposited some cash";

		_bank = str (player getVariable "bank"); 
		ctrlSetText [1002, _bank];

		_cash = str (player getVariable "cash"); 
		ctrlSetText [1004, _cash];
		
	} else {
	
		hint "Not enough cash!";
	
	};
	
}
 else  
{

	hint "Deposit amount must be more than $0!";
	
};