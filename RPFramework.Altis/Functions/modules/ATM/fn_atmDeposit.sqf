/*
Author: Kerkkoh
First Edit: 30.11.2015
*/

if (player getVariable ["isDoingATMstuff", false]) exitWith {hint (localize "STR_RPF_MODULES_ATM_WAIT")};
player setVariable ["isDoingATMstuff", true, true];

private _amount = round (parseNumber (ctrlText 1400));

if (_amount > 0) then {
	[_amount, 1] call ClientModules_fnc_atmRefresh;
	[player, player getVariable "bankAccount", _amount, 1] remoteExecCall ["ServerModules_fnc_atmReplicateMoney", 2];
} else {
	hint (localize "STR_RPF_MODULES_ATM_WITHDRAWALGTZ");
	player setVariable ["isDoingATMstuff", nil, true];
};
