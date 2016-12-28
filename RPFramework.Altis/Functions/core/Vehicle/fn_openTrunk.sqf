/*
Author: Kerkkoh
First Edit: 23.9.2016
*/
params ["_veh"];

createDialog "trunk";

_trunksize = round((getNumber(configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad"))/RPF_TrunkDivide);

if (_trunksize < 1) exitWith { closeDialog 0; };

_trunk = _veh getVariable ["trunk", []];
if (count _trunk == 0) then {
	_veh setVariable ["trunk", [], true];
};

_isFishingModule = 1;
if (isNil {RPF_Fishingnet}) then {
	_isFishingModule = 0;
};

lbClear 1500;

{
	_class = _x select 0;
	
	_stringName = [_class]call Client_fnc_getVehicleName;
	if (_isFishingModule == 1) then {
		if (_class == RPF_Fishingnet) then {
			_stringName = "Fishing Net";
		};
	};
	_item = lbAdd [1500, (format["%1 x %2", _stringName, (_x select 1)])];
	lbSetData [1500, _item, _class];
}forEach _trunk;

_count = 0;
{
	_count = _count + (_x select 1);
}forEach _trunk;

if (!(count (attachedObjects player) > 0) || _count >= _trunksize) then {
	ctrlShow [1600, false];
};
if (!(count _trunk > 0)) then {
	ctrlShow [1601, false];
};

ctrlSetText [1000, (format["Trunk - %1/%2", _count, _trunksize])];
