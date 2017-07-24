/*
    File : fn_killedHandlerGarage.sqf
    Module: Garage
    Author: Dardo
    Description:
    Remove vehicle from garage table
    
    Arguments:
        1 - Vehicle Object
*/
params [["_vehicle",objNull,[objNull]]];

private _key = _vehicle getVariable "key";
[_key] call ServerModules_fnc_removeGarage;