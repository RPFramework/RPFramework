/*
    File : fn_setupVehicle.sqf
    Author: Dardo
    Description:
    Setups a new vehicle by setting variables and event handlers
    Arguments:
        1- Vehicle Object
        2- Row ID
        3- Owner UID
*/
params ["_vehicle","_insertID","_ownerUID"];

_vehicle setVariable ["rowID",_insertID,true];
_vehicle setVariable ["ownerUID",_ownerUID,true];

//Remove vehicle when destroyed from database
_vehicle addMPEventHandler ["mpkilled", {
    _vehicle = _this select 0;
    _rowID = _vehicle getVariable "rowID";
    [_rowID] call Server_fnc_deleteVehicle;
}]; 

//Check whether garage module is enabled or not (TBR)
if (isClass (missionConfigFile >> "RPF_garageModule")) then {
  _vehicle addMPEventHandler ["mpkilled", {_this call ServerModules_fnc_destroyedHandler}];  
};