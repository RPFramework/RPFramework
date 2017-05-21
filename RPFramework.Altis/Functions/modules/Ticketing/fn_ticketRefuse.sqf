/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
params ["_officer"];
closeDialog 0;
[(localize "STR_RPF_MODULES_TICKETING_REFUSEDTICKET")] remoteExecCall ["Client_fnc_hintMP", _officer];