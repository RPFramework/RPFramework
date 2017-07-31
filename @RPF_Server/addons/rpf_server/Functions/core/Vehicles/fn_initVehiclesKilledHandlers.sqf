/*
    File : fn_initVehiclesKilledHandlers.sqf
    Author: Dardo
    Description:
    Initialize RPF_vehiclesKilledHandlers array.
    The purpose of the KilledHandlers scripts is to allow others modules to add functions to be called when a vehicle is killed.
    
    NOTE: The functions will get called on EACH machine connected to the server.
    Add an isServer check at the top of the underlying script if you want the function to be executed only on server side.
    
    
    E.G:fn_killedHandlerKeys.sqf
    //Make sure we are on the server
    if (!isServer) exitWith {};

    params [["_vehicle",objNull,[objNull]]];

    //Wipe keys
    private _key = _vehicle getVariable "key";
    ------------------------------
*/

//Setup mpkilled EHs Array
RPF_vehiclesKilledHandlers = [];


//Pushback core EHs (Keys)
RPF_vehiclesKilledHandlers pushbackUnique "Server_fnc_killedHandlerKeys";