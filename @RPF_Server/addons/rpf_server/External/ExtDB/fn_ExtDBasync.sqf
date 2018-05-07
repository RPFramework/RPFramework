/*
	File: asyncCall.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Commits an asynchronous call to extDB
	Gets result via extDB  4:x + uses 5:x if message is Multi-Part

	Parameters:
		0: STRING (Query to be ran).
		1: INTEGER (1 = ASYNC + not return for update/insert, 2 = ASYNC + return for query's).
*/

private["_queryStmt","_queryResult","_key","_mode","_return","_loop", "_pipe"];

if (!params [
	["_queryStmt", "", [""]],
	["_mode", 0, [0]]
]) exitWith {};

_key = "extDB3" callExtension format["%1:%2:%3",_mode, (call extDB_SQL_CUSTOM_ID), _queryStmt];
if(_mode isEqualTo 1) exitWith {true};

_key = parseSimpleArray format["%1",_key];
_key = _key select 1;

_queryResult = "";
_loop = true;
for "_i" from 0 to 1 step 0 do {
	if (!_loop) exitWith {};
	_queryResult = "extDB3" callExtension format["4:%1", _key];
	if (_queryResult isEqualTo "[5]") then {
		_queryResult = "";
		while{true} do {
			_pipe = "extDB3" callExtension format["5:%1", _key];
			if(_pipe isEqualTo "") exitWith {_loop = false};
			_queryResult = _queryResult + _pipe;
		};
	} else {
		if (_queryResult != "[3]") then {
			_loop = false;
		};
	};
};


_queryResult = parseSimpleArray _queryResult;

if ((_queryResult select 0) isEqualTo 0) exitWith {diag_log format ["extDB3: Protocol Error: %1", _queryResult]; []};
_return = (_queryResult select 1);
_return
