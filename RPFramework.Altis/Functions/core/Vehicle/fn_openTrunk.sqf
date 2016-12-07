/*
Author: Kerkkoh
First Edit: 23.9.2016
*/
params ["_veh"];

createDialog "trunk";

_class = typeOf _veh;
_maxLoad = getNumber(configFile >> "CfgVehicles" >> _class >> "maximumLoad");
_trunksize = round(_maxLoad/300);

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
	_amount = _x select 1;
	
	_stringName = [_class]call Client_fnc_getVehicleName;
	if (_isFishingModule == 1) then {
		if (_class == RPF_Fishingnet) then {
			_stringName = "Fishing Net";
		};
	};
	_finalName = format ["%1 x %2", _stringName, _amount];
	_item = lbAdd [1500, _finalName];
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

_text = format ["Trunk - %1/%2", _count, _trunksize];
ctrlSetText [1000, _text];
