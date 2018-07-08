/*
Author: Kerkkoh
First Edit: 23.11.2015

Params
0 - Number - (1 - Cash, 2 - Bank)
1 - Number - Amount of checked money
*/
params ["_type", "_amount"];

[player, player getVariable "bank", player getVariable "cash"] remoteExecCall ["Server_fnc_confirmMoney", 2];

private _return = false;
if (_type isEqualTo 1) then {
	if (((player getVariable "cash") - _amount) >= 0) then {_return = true}
} else {
	if (((player getVariable "bank") - _amount) >= 0) then {_return = true}
};

_return
