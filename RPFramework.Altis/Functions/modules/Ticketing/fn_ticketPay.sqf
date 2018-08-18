/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
params ["_officer", "_amount"];

if ([2, _amount] call Client_fnc_checkMoney) then {
	[_amount] call Client_fnc_removeBank;
	closeDialog 0;
	[(localize "STR_RPF_MODULES_TICKETING_PAIDTICKET")] remoteExecCall ["Client_fnc_hintMP", _officer];
} else {
	closeDialog 0;
	hint (localize "STR_RPF_MODULES_TICKETING_NOTENOUGHBANK");
	[(localize "STR_RPF_MODULES_TICKETING_FAILEDNOTENOUGH")] remoteExecCall ["Client_fnc_hintMP", _officer];
};
