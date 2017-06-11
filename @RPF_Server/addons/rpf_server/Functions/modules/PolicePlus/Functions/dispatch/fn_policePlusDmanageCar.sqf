/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

params ["_car", "_type", "_action", "_role", "_players"];

if (_action == 0) then {
	if (_type == 0) then {
		RPF_iDNumbers set [0, (RPF_iDNumbers select 0) + 1];
		_unit = format["Police#%1-%2", RPF_iDNumbers select 0, _role];
		RPF_policeCars pushBack [_car, _unit];
		_car setVariable ["id", [_unit, _players], true];
	} else {
		RPF_iDNumbers set [1, (RPF_iDNumbers select 1) + 1];
		_unit = format["Medic#%1-%2", RPF_iDNumbers select 1, _role];
		RPF_medicCars pushBack [_car, _unit];
		_car setVariable ["id", [_unit, _players], true];
	};
} else {
	if (_type == 0) then {
		_i = 0;
		{
			if ((_x select 0) == _car) exitWith {
				_i = _forEachIndex;
			};
		}forEach RPF_policeCars;
		RPF_policeCars deleteAt _i;
	} else {
		_i = 0;
		{
			if ((_x select 0) == _car) exitWith {
				_i = _forEachIndex;
			};
		}forEach RPF_medicCars;
		RPF_medicCars deleteAt _i;
	};
	_car setVariable ["id", nil, true];
	_car setVariable ["curTask", nil, true];
};
if (!isNil {RPF_dispatcher}) then {
	[RPF_policeCars, RPF_medicCars] remoteExec ["ClientModules_fnc_policePlusDrefresh", RPF_dispatcher];
};
