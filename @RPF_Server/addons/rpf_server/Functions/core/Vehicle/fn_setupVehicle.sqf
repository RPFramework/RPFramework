/*
    File : fn_setupVehicle.sqf
    Author: Dardo
    Description:
    Setup a new vehicle by setting variables and event handlers
    Arguments:
        1- Vehicle Object
        2- Row ID
        3- Owner UID
*/
params ["_vehicle","_insertID","_ownerUID"];

_vehicle setVariable ["rowID",_insertID,true];
_vehicle setVariable ["ownerUID",_ownerUID,true];
_vehicle addMPEventHandler ["mpkilled", {_this call Server_fnc_destroyedHandler}]; 