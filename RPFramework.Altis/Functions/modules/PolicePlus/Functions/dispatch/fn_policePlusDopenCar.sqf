/*
Author: Kerkkoh
First Edit: 28.12.2016

Task format: [id, "Name", "Description", position, [assignedunits]]
*/
createDialog "checkDispatchs";

_car = vehicle player;
_roles = [];
if ((typeOf _car) in ((missionConfigFile >> "RPF_Config" >> "policeCars") call BIS_fnc_getCfgData)) then {
	_roles = [(localize "STR_RPF_MODULES_POLICEPLUS_PATROL"),(localize "STR_RPF_MODULES_POLICEPLUS_SUPERVISOR"),(localize "STR_RPF_MODULES_POLICEPLUS_DETECTIVE"),(localize "STR_RPF_MODULES_POLICEPLUS_FEDERAL"),(localize "STR_RPF_MODULES_POLICEPLUS_SWAT")];
} else {
	_roles = [(localize "STR_RPF_MODULES_POLICEPLUS_AMBULANCE"),(localize "STR_RPF_MODULES_POLICEPLUS_FIREENGINE"),(localize "STR_RPF_MODULES_POLICEPLUS_SUPERVISOR")];
};
if (isNil {(_car getVariable 'id')}) then {
	ctrlSetText [1000, (localize "STR_RPF_MODULES_POLICEPLUS_MUNITNOTREG")];
	ctrlSetText [1001, (localize "STR_RPF_MODULES_POLICEPLUS_MUNITSNOTREG")];
	ctrlSetText [1002, (localize "STR_RPF_MODULES_POLICEPLUS_MCALLOUTNOTREG")];
	ctrlSetText [1003, (localize "STR_RPF_MODULES_POLICEPLUS_MDESCNOTREG")];
	
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
		ctrlSetText [1002, (localize "STR_RPF_MODULES_POLICEPLUS_MCALLOUTNONE")];
		ctrlSetText [1003, (localize "STR_RPF_MODULES_POLICEPLUS_MDESCNONE")];
	} else {
		_task = _car getVariable "curTask";
		ctrlSetText [1002, format [(localize "STR_RPF_MODULES_POLICEPLUS_MCALLOUT"), _task select 1]];
		ctrlSetText [1003, format [(localize "STR_RPF_MODULES_POLICEPLUS_MDESC"), _task select 2]];
	};
	
	ctrlSetText [1000, format [(localize "STR_RPF_MODULES_POLICEPLUS_MUNIT"), (_car getVariable "id") select 0]];

	_array = [];
	{
		_array pushBack name _x;
	}forEach ((_car getVariable "id") select 1);
	ctrlSetText [1001, format [(localize "STR_RPF_MODULES_POLICEPLUS_MUNITS"), _array joinString ", "]];

	lbClear 2100;

	{
		_z = lbadd[2100, _x];
	} forEach _roles;

	lbSetCurSel[2100, 0];
};
