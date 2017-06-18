params [["_funcName",""],["_varName",""],["_args",[]],["_id",0];

private _code = format["%1 = _args call %2;",_varName,_funcName]; //Statement: call function and assing result to _varName

call compile _code; //Execute statement

_id publicVariableClient _varName; //Send return back to the client

_code = format["%1 = nil;",_varName]; //Cleanup

call compile _code;

