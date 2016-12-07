/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

_time = parseNumber (ctrlText 1401);
_reason = ctrlText 1400;
closeDialog 0;

[RPF_sendToJailTarget, _time, _reason] remoteExecCall ["ServerModules_fnc_fetchJailCell", 2];

RPF_sendToJailTarget = nil;
