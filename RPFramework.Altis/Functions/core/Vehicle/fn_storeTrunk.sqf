/*
Author: Kerkkoh
First Edit: 23.9.2016

Trunk format:
[
	[randID, "classname", _vars]
]
*/
params ["_veh"];

_vars = [];
_class = "";
{
	detach _x;
	_rem = RPF_ownedFurniture deleteAt (RPF_ownedFurniture find _x);
	_vars = _x getVariable ["vars", []];
	_class = typeOf _x;
	deleteVehicle _x;
} forEach attachedObjects player;

_trunk = _veh getVariable ["trunk", []];

_stringName = [_class]call Client_fnc_getVehicleName;
{
	if ((_x select 0) == _class) exitWith {
		_stringName = (_x select 1);
	};
}forEach RPF_ItemNames;

_item = lbAdd [1500, _stringName];
_randID = round (random 9999);
lbSetData [1500, _item, str _randID];
_trunk pushBack [_randID, _class, _vars];

_trunksize = round((getNumber(configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad"))/RPF_TrunkDivide);
{
	if ((_x select 0) == (typeOf _veh)) exitWith {
		_trunksize = (_x select 1);
	};
}forEach RPF_TrunkException;

_count = count _trunk;

ctrlSetText [1000, (format["Trunk - %1/%2", _count, _trunksize])];

if (!(count (attachedObjects player) > 0) || _count >= _trunksize) then {
	ctrlShow [1600, false];
} else {
	ctrlShow [1600, true];
};
if (!(count _trunk > 0)) then {
	ctrlShow [1601, false];
} else {
	ctrlShow [1601, true];
};

_veh setVariable ["trunk", _trunk, true];
