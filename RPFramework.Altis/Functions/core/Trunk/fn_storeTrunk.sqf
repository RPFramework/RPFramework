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
	if ((_x getVariable ["action",[false]] select 0)) then {
		call compile (format[((_x getVariable "action") select 1), str (netId _x)]);
	};
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

//Get trunkSize of the object
private _trunkSize;
if (isNil {(findDisplay 1020) getVariable "trunkSize"}) then {
_trunkSize = round((getNumber(configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad"))/((missionConfigFile >> "RPF_Config" >> "trunkDivivde") call BIS_fnc_getCfgData));
{
	if ((_x select 0) == (typeOf _veh)) exitWith {
		_trunkSize = (_x select 1);
	};
}forEach ((missionConfigFile >> "RPF_Config" >> "trunkException") call BIS_fnc_getCfgData);
} else {
	_trunkSize = (findDisplay 1020) getVariable "trunkSize";
};

_count = count _trunk;

ctrlSetText [1000, (format[(localize "STR_RPF_CORE_TRUNK_TITLE"), _count, _trunksize])];

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
