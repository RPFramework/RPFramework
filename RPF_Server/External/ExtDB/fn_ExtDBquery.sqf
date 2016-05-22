/*
## This is just experimental so use the official fn_ExtDBasync.sqf ##


Author: Kerkkoh
First Edit: 19.3.2016
Params:
0 - Async mode (Anything will do to this script)
1 - Predefined statement name and its params, in format "exampleQuery:input:input:input"
*/

private ["_querstr", "_quer", "_array"];
params ["_mode", "_query"];

_querstr = format ["%1:%2:%3", _mode, (call extDB_SQL_CUSTOM_ID), _query];
_quer = "extDB3" callExtension _querstr;
_array = call compile _quer;
_return = _array select 1;


if ((_array select 0) == 0) exitWith
{
	diag_log format ["ExtDB3 Error: %1", _quer];
};

_return;