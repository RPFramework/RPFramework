/*
Author: Kerkkoh
First Edit: 28.12.2016

0 - OBJECT - The car that this unit is attached to
1 - NUMBER - 0 for police units, anything else for medic units
2 - NUMBER - 0 for adding an unit, anything else for removing units
3 - STRING - The role of the unit
4 - ARRAY OF OBJECTS - Array of players attached to the unit
*/

params ["_car", "_type", "_action", "_role", "_players"];
private["_unit", "_i", "_idNumbersIdx", "_unitStr"];

if (_action isEqualTo 0) then {
	_idNumbersIdx = [1, 0] select (_type isEqualTo 0);
	_unitStr = ["Medic", "Police"] select (_type isEqualTo 0);

	RPF_iDNumbers set [_idNumbersIdx, (RPF_iDNumbers select _idNumbersIdx) + 1];
	
	_unit = format["%1#%2-%3", _unitStr, RPF_iDNumbers select _idNumbersIdx, _role];
	([RPF_medicCars, RPF_policeCars] select (_type isEqualTo 0)) pushBack [_car, _unit];

	_car setVariable ["id", [_unit, _players], true];
} else {
	_i = 0;
	{
		if ((_x select 0) isEqualTo _car) exitWith {
			_i = _forEachIndex;
		};
	}forEach ([RPF_medicCars, RPF_policeCars] select (_type isEqualTo 0));
	([RPF_medicCars, RPF_policeCars] select (_type isEqualTo 0)) deleteAt _i;

	_car setVariable ["id", nil, true];
	_car setVariable ["curTask", nil, true];
};
if (!isNil "RPF_dispatcher") then {
	[RPF_policeCars, RPF_medicCars] remoteExec ["ClientModules_fnc_policePlusDrefresh", RPF_dispatcher];
};
