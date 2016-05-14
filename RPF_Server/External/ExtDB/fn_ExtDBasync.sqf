/*
    File: asyncCall.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Commits an asynchronous call to ExtDB

    Parameters:
        0: STRING (Query to be ran).
        1: INTEGER (1 = ASYNC + not return for update/insert, 2 = ASYNC + return for query's).
        3: BOOL (True to return a single array, false to return multiple entries mainly for garage).
*/
private["_queryStmt","_mode","_queryResult","_key","_return","_loop"];
_queryStmt = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,1,[0]] call BIS_fnc_param;

_key = "extDB2" callExtension format["%1:%2:%3",_mode,FETCH_CONST(life_sql_id),_queryStmt];

if(_mode isEqualTo 1) exitWith {true};

_key = call compile format["%1",_key];
_key = _key select 1;
_queryResult = "extDB2" callExtension format["4:%1", _key];

//Make sure the data is received
if(_queryResult isEqualTo "[3]") then {
    for "_i" from 0 to 1 step 0 do {
        if (!(_queryResult isEqualTo "[3]")) exitWith {};
        _queryResult = "extDB2" callExtension format["4:%1", _key];
    };
};

if(_queryResult isEqualTo "[5]") then {
    _loop = true;
    for "_i" from 0 to 1 step 0 do { // extDB2 returned that result is Multi-Part Message
        _queryResult = "";
        for "_i" from 0 to 1 step 0 do {
            _pipe = "extDB2" callExtension format["5:%1", _key];
            if(_pipe == "") exitWith {_loop = false};
            _queryResult = _queryResult + _pipe;
        };
    if(!_loop) exitWith {};
    };
};
_queryResult = call compile _queryResult;
if((_queryResult select 0) isEqualTo 0) exitWith {diag_log format ["extDB2: Protocol Error: %1", _queryResult]; []};
_return = _queryResult select 1;

_return;
