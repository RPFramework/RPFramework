/*
Author: Kerkkoh
First Edit: 23.9.2016

Trunk format:
[
	["randID", "classname", _vars]
]
*/
params [["_veh",objNull,[objNull]],["_trunkSize",0,[0]]];
private["_trunk", "_count"];

closeDialog 0;

createDialog "trunk";

if (_trunkSize <= 0) then {
	_trunksize = round((getNumber(configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad"))/((missionConfigFile >> "RPF_Config" >> "trunkDivivde") call BIS_fnc_getCfgData));
};

{
	if ((_x select 0) isEqualTo (typeOf _veh)) then {
		_trunksize = (_x select 1);
	};
	true;
}count ((missionConfigFile >> "RPF_Config" >> "trunkException") call BIS_fnc_getCfgData);

if (_trunksize < 1) exitWith { closeDialog 0; };

_trunk = _veh getVariable ["trunk", []];
if ((count _trunk) isEqualTo 0) then {
	_veh setVariable ["trunk", [], true];
};

//Set a trunkSize var to the trunk display
(findDisplay 1020) setVariable ["trunkSize",_trunkSize];


lbClear 1500;

_count = {
	private["_y", "_class", "_stringName", "_item"];
	_y = _x;
	_class = _y select 1;
	_stringName = [_class]call Client_fnc_getVehicleName;
	{
		if ((_x select 0) isEqualTo _class) then {
			_stringName = (_x select 1);
		};
		true;
	}count RPF_ItemNames;
	_item = lbAdd [1500, _stringName];
	lbSetData [1500, _item, _y select 0];
	true;
}count _trunk;

if (!(count (attachedObjects player) > 0) || _count >= _trunksize) then {
	ctrlShow [1600, false];
};
if (count _trunk <= 0) then {
	ctrlShow [1601, false];
};

ctrlSetText [1000, (format[(localize "STR_RPF_CORE_TRUNK_TITLE"), _count, _trunksize])];
