/*
Author: Kerkkoh
First Edit: 23.9.2016

Trunk format:
[
	[randID, "classname", _vars]
]
*/
params ["_veh"];

createDialog "trunk";

_trunksize = round((getNumber(configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad"))/RPF_TrunkDivide);
{
	if ((_x select 0) == (typeOf _veh)) exitWith {
		_trunksize = (_x select 1);
	};
}forEach RPF_TrunkException;

if (_trunksize < 1) exitWith { closeDialog 0; };

_trunk = _veh getVariable ["trunk", []];
if (count _trunk == 0) then {
	_veh setVariable ["trunk", [], true];
};


lbClear 1500;

{
	_y = _x;
	_class = _y select 1;
	_stringName = [_class]call Client_fnc_getVehicleName;
	{
		if ((_x select 0) == _class) exitWith {
			_stringName = (_x select 1);
		};
	}forEach RPF_ItemNames;
	_item = lbAdd [1500, _stringName];
	lbSetData [1500, _item, str (_y select 0)];
}forEach _trunk;

_count = count _trunk;

if (!(count (attachedObjects player) > 0) || _count >= _trunksize) then {
	ctrlShow [1600, false];
};
if (!(count _trunk > 0)) then {
	ctrlShow [1601, false];
};

ctrlSetText [1000, (format["Trunk - %1/%2", _count, _trunksize])];
