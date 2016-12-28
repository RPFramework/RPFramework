/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
params ["_amount"];

[player, player getVariable "bankAccount", _amount, 0, 0] remoteExecCall ["Server_fnc_replicateMoney", 2];