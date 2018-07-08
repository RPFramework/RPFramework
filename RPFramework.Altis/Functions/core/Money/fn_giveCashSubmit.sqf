/*
Author: Kerkkoh
First Edit: 23.11.2015
*/

params ["_target", "_giver"];

private _amount = parseNumber (ctrlText 1401);
closeDialog 0;

if (_amount > 0) then {
	if ([1, _amount] call Client_fnc_checkMoney) then {
		[_amount] call Client_fnc_removeCash;
		[_amount] remoteExecCall ["Client_fnc_addCash", _target];

		[format[(localize "STR_RPF_CORE_MONEY_GAVEYOU"), _giver, _amount]] remoteExecCall ["Client_fnc_hintMP", _target];
	} else {
		hint (localize "STR_RPF_CORE_MONEY_NOTENOUGHCASH");
	};
} else {
	hint (localize "STR_RPF_CORE_MONEY_GREATERTHANZERO");
};
