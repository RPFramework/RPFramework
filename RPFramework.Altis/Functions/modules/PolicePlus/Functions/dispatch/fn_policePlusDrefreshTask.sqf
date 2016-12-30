/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

_indexLB = lbCurSel 1500;
if (_indexLB == -1) exitWith {};
_strData = lbData [1500, _indexLB];
_taskID = call compile _strData;
_task = [];
{
	if (_taskID == (_x select 0)) exitWith {
		_task = _x;
	};
}forEach RPF_currentDispatchTasks;

ctrlSetText [1400, _task select 1];
ctrlSetText [1401, _task select 2];
ctrlSetText [1002, str (_task select 3)];
_array = [];
{
	_array pushBack ((_x getVariable "id") select 0);
}forEach (_task select 4);
_aFinal = _array joinString ", ";
ctrlSetText [1007, _aFinal];
