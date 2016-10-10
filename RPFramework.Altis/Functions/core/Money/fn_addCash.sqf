/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
params ["_amount"];

_bankAccount = player getVariable "bankAccount";

[player, _bankAccount, _amount, 1, 1] remoteExecCall ["Server_fnc_replicateMoney", 2];