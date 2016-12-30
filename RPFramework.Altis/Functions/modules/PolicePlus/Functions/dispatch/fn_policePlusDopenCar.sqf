/*
Author: Kerkkoh
First Edit: 28.12.2016

Task format: [id, "Name", "Description", position, [assignedunits]]
*/
createDialog "checkDispatchs";

_car = vehicle player;
_roles = [];
if ((typeOf _car) in RPF_PoliceCars) then {
	_roles = ["Patrol","Supervisor","Detective","Federal","SWAT"];
} else {
	_roles = ["Ambulance","Fire Engine","Supervisor"];
};
if (isNil {(_car getVariable 'id')}) then {
	ctrlSetText [1000, "Unit: Not registered"];
	ctrlSetText [1001, "Units: Not registered"];
	ctrlSetText [1002, "Callout: Not registered"];
	ctrlSetText [1003, "Description: Not registered"];
	
	ctrlShow [1603, false];
	ctrlShow [1600, false];
	ctrlShow [1601, false];

	lbClear 2100;
	{
		_z = lbadd[2100, _x];
	} forEach _roles;
	lbSetCurSel[2100, 0];
} else {
	ctrlShow [1602, false];
	if (player in (((vehicle player) getVariable "id") select 1)) then {ctrlShow [1600, false];} else {ctrlShow [1601, false];};
	if (isNil {(_car getVariable 'curTask')}) then {
		ctrlSetText [1002, "Callout: None"];
		ctrlSetText [1003, "Description: None"];
	} else {
		_task = _car getVariable "curTask";
		ctrlSetText [1002, format ["Callout: %1", _task select 1]];
		ctrlSetText [1003, format ["Description: %1", _task select 2]];
	};
	
	ctrlSetText [1000, format ["Unit: %1", (_car getVariable "id") select 0]];

	_array = [];
	{
		_array pushBack name _x;
	}forEach ((_car getVariable "id") select 1);
	ctrlSetText [1001, format ["Units: %1", _array joinString ", "]];

	lbClear 2100;

	{
		_z = lbadd[2100, _x];
	} forEach _roles;

	lbSetCurSel[2100, 0];
};
