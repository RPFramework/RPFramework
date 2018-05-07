/*
## This is just experimental so use the official fn_ExtDBasync.sqf ##


Author: Kerkkoh
First Edit: 19.3.2016
Params:
0 - Async mode
1 - Predefined statement name and its params, in format "exampleQuery:input:input:input"
*/

private ["_quer", "_array"];
if (!params [
	["_mode", 0, [0]],
	["_query", "", [""]]
]) exitWith {};

_quer = "extDB3" callExtension format["%1:%2:%3", _mode, call extDB_SQL_CUSTOM_ID, _query];
_array = parseSimpleArray _quer;

if ((_array select 0) isEqualTo 0) exitWith {
	diag_log format ["ExtDB3 Error: %1", _quer];
};

_array select 1;
