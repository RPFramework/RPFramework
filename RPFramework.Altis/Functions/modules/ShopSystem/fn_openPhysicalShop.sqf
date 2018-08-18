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

(_ct getVariable "buyableThing") params ["_class","_price","_type"];
ctrlSetText [1003, str _price];

// prevent civs from buying cop and ems vehicles

if ((_class in ((missionConfigFile >> "RPF_Config" >> "policeCars") call BIS_fnc_getCfgData)) && (player getVariable ['cop', 0] <= 0)) exitWith {closeDialog 0;};

if ((_class in ((missionConfigFile >> "RPF_Config" >> "medicCars") call BIS_fnc_getCfgData)) && (player getVariable ['ems', 0] <= 0)) exitWith {closeDialog 0;};

switch (true) do {
	case (_type == 0): {
		ctrlSetText [1001, [_class]call Client_fnc_getVehicleName];
	};
	case (_type == 1): {
		ctrlSetText [1001, [_class]call Client_fnc_getWeaponName];
		ctrlShow [1004, true];
		ctrlShow [1400, true];
	};
	case (_type == 2): {
		ctrlSetText [1001, [_class]call Client_fnc_getVehicleName];
	};
};
