/*
    File : fn_killedHandlerKeys.sqf
    Author: Dardo
    Description:
    Remove vehicle's key from keys table
    
    Arguments:
        1 - Vehicle Object
*/
params [["_vehicle",objNull,[objNull]]];


//Wipe keys
private _key = _vehicle getVariable "key";
[_key] call Server_fnc_deleteKeys;