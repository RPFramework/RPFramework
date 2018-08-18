/*
Author: Kerkkoh

First Edit: 17.4.2016
*/
private ["_amount", "_account", "_nBank"];

if (player getVariable ["isDoingATMstuff", false]) exitWith {hint (localize "STR_RPF_MODULES_ATM_WAIT")};
player setVariable ["isDoingATMstuff", true, true];

_amount = parseNumber (ctrlText 1401);
_account = parseNumber (ctrlText 1402);

if (_amount <= 0) exitWith {
	hint (localize "STR_RPF_MODULES_ATM_INVALIDAMOUNT");
};

if (player getVariable "bankAccount" == _account) exitWith {
	hint (localize "STR_RPF_MODULES_ATM_CANTSENDYOURSELF");
};

_nBank = ((player getVariable "bank") - _amount);
if (_nBank < 0) exitWith {
	hint (localize "STR_RPF_ATM_TRANSFER_NOTENOUGHBANK")
};

ctrlSetText [1002, str _nBank];

[_account, _amount, player] remoteExecCall ["ServerModules_fnc_transferMoney", 2];
