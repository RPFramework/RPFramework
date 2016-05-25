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
_class = _array select 0;
_price = _array select 1;
ctrlSetText [1003, str _price];
_type = _array select 2;

if ((_class in RPF_PoliceCars) && (player getVariable ['cop', 0] <= 0)) exitWith {closeDialog 0;};

if ((_class in RPF_MedicCars) && (player getVariable ['ems', 0] <= 0)) exitWith {closeDialog 0;};

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
	case (_type == 2 && _class != RPF_Fishingnet): {
		_name = [_class]call Client_fnc_getVehicleName;
		ctrlSetText [1001, _name];
	};
	case (_type == 2 && _class == RPF_Fishingnet): {
		_name = "Fishing net";
		ctrlSetText [1001, _name];
	};
};