/*
Author: Kerkkoh
First Edit: 28.12.2016
*/
private ["_arr","_idc","_car","_index","_data","_array"];
params["_type"];
_arr = RPF_dispatchMedicCars;
_idc = 1502;
if (_type isEqualTo 0) then {
	_arr = RPF_dispatchPoliceCars;
	_idc = 1501;
};

if ((lbCurSel _idc) isEqualTo -1) exitWith {};

_car = objNull;
{
	if ((lbData[_idc, lbCurSel _idc]) isEqualTo (_x select 1)) then {
		_car = _x select 0;
	};
	true;
}count _arr;

if (isNil {(_car getVariable "curTask")}) exitWith {};

_index = -1;
_data = [];
{
	if ((_x select 0) == ((_car getVariable "curTask") select 0)) exitWith {
		_index = _forEachIndex;
		_data = _x;
	};
}forEach RPF_currentDispatchTasks;

lbSetCurSel [1500, _index];
ctrlSetText [1400, _data select 1];
ctrlSetText [1401, _data select 2];
ctrlSetText [1002, str (_data select 3)];
_array = [];
{
	_array pushBack ((_x getVariable "id") select 0);
	true;
}count (_data select 4);

ctrlSetText [1007, _array joinString ", "];
