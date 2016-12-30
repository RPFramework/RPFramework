/*
Author: Kerkkoh
First Edit: 28.12.2016
*/
disableSerialization;
if (ctrlText 1002 == "[]" || ctrlText 1002 == "" || ctrlText 1002 == "[0,0,0]" || ctrlText 1400 == "" || ctrlText 1401 == "") exitWith {};

_pos = getMarkerPos "tdm";
[0, -1, ctrlText 1400, ctrlText 1401, _pos] remoteExecCall ["ServerModules_fnc_policePlusDmanageTask", 2];
ctrlSetText [1002, "[0,0,0]"];
ctrlSetText [1007, ""];
deleteMarkerLocal "tdm";
