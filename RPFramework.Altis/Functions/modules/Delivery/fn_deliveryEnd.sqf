/*
	File: fn_deliveryEnd.sqf
	Author: J. Schmidt

	Description:
	Ends the Delivery Mission.
*/

_unit = _this select 0;

task setTaskState "Succeeded";
hint format ["Successfully delivered package to %1", myMarker];

if (taskState task != "Succeded") then {
	deleteVehicle _unit;
	player removeSimpleTask task;
	deleteMarker myMarker;
};