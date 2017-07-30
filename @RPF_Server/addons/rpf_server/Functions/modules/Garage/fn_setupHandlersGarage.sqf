/*
    File : fn_setupHandlersGarage.sqf
    Module: Garage
    Author: Dardo
    Description:
    Eases the setting up process of a vehicle.
    This script will setup all needed EHs on it.
    When the vehicle gets killed,this script will remove the key of the vehicle and the same vehicle from the database.
    
    Arguments:
        1 - Vehicle Object
*/
params [["_vehicle",objNull,[objNull]]];

//Make sure to:

//Clean keys
_vehicle addMPEventHandler ["mpkilled",{if (!isServer) exitWith {}; _this call Server_fnc_killedHandlerKeys}];

//Remove from database
_vehicle addMPEventHandler ["mpkilled",{if (!isServer) exitWith {}; _this call ServerModules_fnc_killedHandlerGarage}];
