/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];

private _idx = RPF_Cars find _ct;
if (_idx isEqualTo -1) exitWith {};
private _vehID = _ct getVariable "rowID";
RPF_Cars deleteAt _idx;

[_vehID,true,[_ct] call Client_fnc_vehicleHitGet] remoteExecCall ["Server_fnc_updateVehicle", 2];

deleteVehicle _ct;