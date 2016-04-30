/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
_amount = parseNumber (ctrlText 1400);
closeDialog 0;

if (_amount > 0) then 
{

	_check = [1, _amount] call Client_fnc_checkMoney;
	if (_check) then 
	{
	
		[_amount] call Client_fnc_removeCash;
		[_amount] call Client_fnc_addBank;
		hint "Successfully deposited some cash";
		
	} else {
	
		hint "Not enough cash!";
	
	};
	
}
 else  
{

	hint "Deposit amount must be more than $0!";
	
};