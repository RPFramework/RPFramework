/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
_amount = round (parseNumber (ctrlText 1400));

if (_amount > 0) then {
	_check = [1, _amount] call Client_fnc_checkMoney;
	if (_check) then {
		_bank = player getVariable "bank";
		_cash = player getVariable "cash";
		
		[_cash, _amount, 0, 1] call ClientModules_fnc_atmRefresh;
		[_bank, _amount, 1, 0] call ClientModules_fnc_atmRefresh;
		
		[_amount] call Client_fnc_removeCash;
		[_amount] call Client_fnc_addBank;
	} else {
		hint "Not enough cash!";
	};
} else {
	hint "Deposit amount must be more than $0!";
};