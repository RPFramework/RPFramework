/*
Author: Kerkkoh
First Edit: 20.11.2016
*/
closeDialog 0;

[RPF_sendToJailTarget, parseNumber (ctrlText 1401), ctrlText 1400] remoteExecCall ["ServerModules_fnc_fetchJailCell", 2];

RPF_sendToJailTarget = nil;
