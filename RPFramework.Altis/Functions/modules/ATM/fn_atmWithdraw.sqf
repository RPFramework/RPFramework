/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
_amount = round (parseNumber (ctrlText 1400));

if (_amount > 0) then {
	_check = [2, _amount] call Client_fnc_checkMoney;
	if (_check) then {
		_bank = player getVariable "bank";
		_cash = player getVariable "cash";
		
		[_bank, _amount, 0, 0] call ClientModules_fnc_atmRefresh;
		[_cash, _amount, 1, 1] call ClientModules_fnc_atmRefresh;
	
		[_amount] call Client_fnc_removeBank;
		[_amount] call Client_fnc_addCash;
	} else {
		hint "Not enough bank balance!";
	};
} else {
	hint "Withdrawal amount must be more than $0!";
};