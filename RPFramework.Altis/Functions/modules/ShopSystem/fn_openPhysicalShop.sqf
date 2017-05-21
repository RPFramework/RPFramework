/*
Author: Kerkkoh
First Edit: 22.4.2016

params
0 - Object - cursorObject

cursorObject setVariable ["buyableThing", ["C_Offroad_01_F", 10000, 0], true];
buyableThing array format ["C_Offroad_01_F", 10000, 0] >>> ["Classname", price, type(0 - Car, 1 - Item, 2 - Physical item (Furniture / Fishing nets))]
						  ["RPF_Items_Olives", 10000, 1]
*/
params ["_ct"];

createDialog "physicalShop";

ctrlShow [1004, false];
ctrlShow [1400, false];

_array = _ct getVariable "buyableThing";
_methLab = _ct getVariable ["methLab", false];
_class = _array select 0;
_price = _array select 1;
ctrlSetText [1003, str _price];
_type = _array select 2;

if ((_class in ((missionConfigFile >> "RPF_Config" >> "policeCars") call BIS_fnc_getCfgData)) && (player getVariable ['cop', 0] <= 0)) exitWith {closeDialog 0;};

if ((_class in ((missionConfigFile >> "RPF_Config" >> "medicCars") call BIS_fnc_getCfgData)) && (player getVariable ['ems', 0] <= 0)) exitWith {closeDialog 0;};

switch (true) do {
	case (_type == 0): {
		_name = [_class]call Client_fnc_getVehicleName;
		ctrlSetText [1001, _name];
	};
	case (_type == 1): {
		_name = [_class]call Client_fnc_getWeaponName;
		ctrlSetText [1001, _name];
		ctrlShow [1400, true];
		ctrlShow [1004, true];
	};
	case (_type == 2 && _class != RPF_Fishingnet && !_methLab): {
		_name = [_class]call Client_fnc_getVehicleName;
		ctrlSetText [1001, _name];
	};
	case (_type == 2 && _class == RPF_Fishingnet): {
		_name = (localize "STR_RPF_MODULES_SHOPSYSTEM_FNET");
		ctrlSetText [1001, _name];
	};
	case (_type == 2 && _methLab): {
		_name = (localize "STR_RPF_MODULES_SHOPSYSTEM_CHEMTABLE");
		ctrlSetText [1001, _name];
	};
};