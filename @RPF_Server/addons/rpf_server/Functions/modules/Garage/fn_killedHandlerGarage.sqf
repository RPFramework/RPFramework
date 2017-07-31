/*
    File : fn_killedHandlerGarage.sqf
    Module: Garage
    Author: Dardo
    Description:
    Remove vehicle from garage table
    
    Arguments:
        1 - Vehicle Object
*/
//Make sure we are on the server
if (!isServer) exitWith {};

params [["_vehicle",objNull,[objNull]]];

private _key = _vehicle getVariable "key";
[_key] call ServerModules_fnc_removeGarage;