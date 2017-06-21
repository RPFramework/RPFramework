/*
    File : fn_destroyedHandler.sqf
    Author: Dardo
    Description:
    To be called when a vehicle gets destroyed.
    - Removes vehicle from database
    - Removes vehicle from persistency Handler (if running)
    - Remotely updates RPF_Cars array of vehicle's owner by removing it
    
    Arguments:
        1- Vehicle Object
*/

params ["_vehicle"];

_pushbackFSM = {
  params ["_handle","_var","_item"] ; 
  private _curValue = _handle getFSMVariable _var;
  if (typeName _curValue != "ARRAY") exitWith { _handle setFSMVariable [_var,[]]; };
  private _finalValue=_curValue;
  _finalValue pushBack _item;
  _handle setFSMVariable [_var,_finalValue];
};
private _vehID = _vehicle getVariable "rowID";
private _ownerUID = _vehicle getVariable "ownerUID";

//Check whether persistency is on,then add vehicle in queue for removal
if (!(isNil "persistencyHandler") && (((missionConfigFile >> "RPF_garageModule" >> "switch_mode") call BIS_fnc_getCfgData) isEqualTo 1)) then {
    [persistencyHandler,"_toRemove",_vehID] call _pushbackFSM
};


//Check if owner is still online
//If so,update his RPF_Cars array
private _owner = [_ownerUID] call bis_fnc_getUnitByUid;
if not(isNull _owner) then { //Owner is online,update his RPF_Cars array
[_vehicle,"remove"] remoteExecCall ["ClientModules_fnc_updateCars",_owner]
};