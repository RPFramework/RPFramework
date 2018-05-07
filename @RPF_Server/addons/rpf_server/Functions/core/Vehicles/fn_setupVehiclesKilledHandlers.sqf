/*
    File : fn_setupVehiclesKilledHandlers.sqf
    Author: Dardo
    Description:
    Eases the setting up process of a vehicle.
    This script will setup all EHs in RPF_vehiclesKilledHandlers array.

    Arguments:
        1 - Vehicle Object
*/
params [["_vehicle",objNull,[objNull]]];

//Iterate through RPF_vehiclesKilledHandlers and add each EH to the vehicle
{
    _vehicle addMPEventHandler ["mpkilled",compile(format["_this call %1",_x])];

		true;
} count RPF_vehiclesKilledHandlers;
