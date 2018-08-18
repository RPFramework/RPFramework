/*
Author: Kerkkoh
First Edit: 28.12.2016

Task format: [id, "Name", "Description", position, [assignedunits]]
*/
disableSerialization;
private ["_indx","_indexCop","_indexEms", "_array","_idc","_car","_taskData"];
_indx = lbCurSel 1500;
_indexCop = lbCurSel 1501;
_indexEms = lbCurSel 1502;
if (_indx isEqualTo -1) exitWith {};
if (_indexCop isEqualTo -1 && _indexEms isEqualTo -1) exitWith {};
if (_indexCop != -1 && _indexEms != -1) exitWith {
	((findDisplay 1086) displayCtrl 1501) lbSetCurSel -1;
	((findDisplay 1086) displayCtrl 1502) lbSetCurSel -1;
};

_array = RPF_dispatchMedicCars;
_idc = 1502;
if (_indexCop != -1 && _indexEms isEqualTo -1) then {
	_idc = 1501;
	_array = RPF_dispatchPoliceCars;
};

_car = objNull;
{
	if ((lbData [_idc, lbCurSel _idc]) isEqualTo (_x select 1)) then {
		_car = _x select 0;
	};
	true;
}count _array;

if (!(isNil {(_car getVariable "curTask")})) exitWith { hint (localize "STR_RPF_MODULES_POLICEPLUS_UNITBUSY"); };

_taskData = [];
{
	if ((parseNumber lbData [1500, _indx]) == (_x select 0)) exitWith {
		_taskData = _x;
	};
}forEach RPF_currentDispatchTasks;

[_taskData select 0, _car] remoteExecCall ["ServerModules_fnc_policePlusDassignTask", 2];

_car setVariable ["curTask", _taskData, true];

{
	[_taskData select 1, _taskData select 3] remoteExecCall ["ClientModules_fnc_policePlusDreceiveTask", _x];
	true;
}count ((_car getVariable "id") select 1);

_array = [];
{
	_array pushBack ((_x getVariable "id") select 0);
	true;
}count (_taskData select 4);

ctrlSetText [1007, _array joinString ", "];
