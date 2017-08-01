/*
    File : fn_killedHandlerKeys.sqf
    Module: Garage
    Author: Dardo
    Description:
    Remove vehicle's key from keys table
    
    Arguments:
        1 - Vehicle Object
*/
//Make sure we are on the server
if (!isServer) exitWith {};

params [["_vehicle",objNull,[objNull]]];

//Wipe keys
private _key = _vehicle getVariable "key";
[_key] call Server_fnc_deleteKeys;