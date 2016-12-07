/*
Author: Kerkkoh
First Edit: 23.9.2016
*/
params ["_veh"];

_class = "";
{
	detach _x;
	_class = typeOf _x;
	
	_pia = RPF_ownedFurniture find _x;
	_rem = RPF_ownedFurniture deleteAt _pia;
	
	deleteVehicle _x;
} forEach attachedObjects player;

_isFishingModule = 1;
if (isNil {RPF_Fishingnet}) then {
	_isFishingModule = 0;
};

_trunk = _veh getVariable ["trunk", []];

lbClear 1500;

_found = 0;
{
	_class1 = _x select 0;
	_amount1 = _x select 1;
	if (_class1 == _class) then {
		_amount1 = _amount1 + 1;
		_x set [1, _amount1];
		_found = 1;
	};
	_stringName1 = [_class]call Client_fnc_getVehicleName;
	if (_isFishingModule == 1) then {
		if (_class == RPF_Fishingnet) then {
			_stringName1 = "Fishing Net";
		};
	};
	_finalName1 = format ["%1 x %2", _stringName1, _amount1];
	_item1 = lbAdd [1500, _finalName1];
	lbSetData [1500, _item1, _class1];
}forEach _trunk;

if (_found == 0) then {
	_trunk pushBack [_class, 1];
	_stringName = [_class]call Client_fnc_getVehicleName;
	if (_isFishingModule == 1) then {
		if (_class == RPF_Fishingnet) then {
			_stringName = "Fishing Net";
		};
	};
	_finalName = format ["%1 x %2", _stringName, 1];
	_item = lbAdd [1500, _finalName];
	lbSetData [1500, _item, _class];
};

_classVeh = typeOf _veh;
_maxLoad = getNumber(configFile >> "CfgVehicles" >> _classVeh >> "maximumLoad");
_trunksize = round(_maxLoad/300);
_count = 0;
{
_count = _count + (_x select 1);
}forEach _trunk;
_text = format ["Trunk - %1/%2", _count, _trunksize];
ctrlSetText [1000, _text];

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
