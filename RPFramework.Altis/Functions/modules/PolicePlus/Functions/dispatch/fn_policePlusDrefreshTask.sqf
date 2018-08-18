/*
Author: Kerkkoh
First Edit: 28.12.2016
*/
private ["_indexLB","_task","_array"];
_indexLB = lbCurSel 1500;
if (_indexLB isEqualTo -1) exitWith {};
_task = [];
{
	if ((parseNumber lbData [1500, _indexLB]) == (_x select 0)) exitWith {
		_task = _x;
	};
}forEach RPF_currentDispatchTasks;

ctrlSetText [1400, _task select 1];
ctrlSetText [1401, _task select 2];
ctrlSetText [1002, str (_task select 3)];
_array = [];
{
	_array pushBack ((_x getVariable "id") select 0);
	true;
}count (_task select 4);

ctrlSetText [1007, _array joinString ", "];
