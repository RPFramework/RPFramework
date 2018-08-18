/*
Author: Kerkkoh
First Edit: 28.12.2016
*/
private ["_indx","_data","_allCars","_car"];
_indx = lbCurSel 1500;
if (_indx isEqualTo -1) exitWith {};
_data = [];
{
	if ((parseNumber lbData [1500, _indx]) isEqualTo (_x select 0)) exitWith {
		_data = _x;
	};
}forEach RPF_currentDispatchTasks;

_allCars = [];
{
	if ((_x select 0) in (_data select 4)) then {
		_car = _x select 0;
		_car setVariable ["curTask", nil, true];
		_allCars pushBack _car;
	};
	true;
}count RPF_dispatchPoliceCars;
{
	if ((_x select 0) in (_data select 4)) then {
		_car = _x select 0;
		_car setVariable ["curTask", nil, true];
		_allCars pushBack _car;
	};
	true;
}count RPF_dispatchMedicCars;

{
	{
		[_data select 1] remoteExecCall ["ClientModules_fnc_policePlusDreceiveCompleteTask", _x];
		true;
	} count ((_x getVariable "id") select 1);
	true;
}count _allCars;

[1, _data select 0, "", "", ""] remoteExecCall ["ServerModules_fnc_policePlusDmanageTask", 2];

deleteMarkerLocal (str (_data select 0));
