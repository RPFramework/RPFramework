/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
private ["_amount","_reason"];
_amount = parseNumber (ctrlText 1401);
_reason = ctrlText 1400;
closeDialog 0;

params ["_target", "_officer"];

if (_amount > 0) then
{
	[_officer, _amount, _reason] remoteExecCall ["ClientModules_fnc_ticketGet", _target];
}
else
{
	hint (localize "STR_RPF_MODULES_TICKETING_AMOUNTGTZ");
};
