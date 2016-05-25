/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
params ["_officer", "_amount"];

_check = [2, _amount] call Client_fnc_checkMoney;
if (_check) then 
{
	[_amount] call Client_fnc_removeBank;
	closeDialog 0;
	["Ticketed person PAID the ticket!"] remoteExecCall ["Client_fnc_hintMP", _officer];
} else {
	closeDialog 0;
	hint "You don't have enough money in your bank account!";
	["Ticketed person DOESN'T HAVE ENOUGH MONEY to pay the ticket!"] remoteExecCall ["Client_fnc_hintMP", _officer];
};