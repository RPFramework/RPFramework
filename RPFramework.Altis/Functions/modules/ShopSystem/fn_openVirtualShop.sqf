/*
Author: Kerkkoh
First Edit: 23.4.2016

params
0 - Object - cursorObject

_array =
[
	"Shop Name",
	[
		["RPF_Items_PoppySeed", 2, 0],
		["RPF_Items_OliveSeed", 1, 0],
		["hgun_Rook40_F", 700, 2],
		["30Rnd_9x21_Mag", 15, 1],
		["muzzle_snds_L", 300, 0],
		["U_NikosAgedBody", 30, 3],
		["V_Rangemaster_belt", 40, 4],
		["H_Cap_surfer", 10, 5],
		["B_Kitbag_mcamo", 50, 6],
		["class", BUYprice, type]
	],
	[
		["RPF_Items_Poppy", 100, 0],
		["RPF_Items_Olives", 50, 0],
		["hgun_Rook40_F", 350, 2],
		["30Rnd_9x21_Mag", 5, 1],
		["class", SELLprice, type]
	]
];
cursorObject setVariable ["shopSystemShop", _array, true];
Types:
0 - Item
1 - Magazine
2 - Weapon
3 - Uniform
4 - Vest
5 - Headgear
6 - Backpack

onLbSelChanged = []call ClientModules_fnc_shopSystemRefresh;
*/
params ["_ct"];

createDialog "virtualShop";

_array = _ct getVariable "shopSystemShop";
_shopName = _array select 0;

if ((_shopName == "Police") && (player getVariable ['cop', 0] <= 0)) exitWith {closeDialog 0;};

if ((_shopName == "EMS") && (player getVariable ['ems', 0] <= 0)) exitWith {closeDialog 0;};


_shopItems = _array select 1;
ctrlSetText [1000, _shopName];

{
	_class = _x select 0;
	_price = _x select 1;
	_type = _x select 2;
	_classPriceType = [_class, _price, _type];
	_stringName = "";
	switch (true) do {
	    case (_type == 0 || _type == 2 || _type == 3 || _type == 4 || _type == 5): {
			_stringName = [_class]call Client_fnc_getWeaponName;
		};
	    case (_type == 1): {
			_stringName = [_class]call Client_fnc_getMagazineName;
		};
		case (_type == 6): {
			_stringName = [_class]call Client_fnc_getVehicleName;
		};
	};
	_shopItem = lbAdd [1500, _stringName];
	lbSetData [1500, _shopItem, str _classPriceType];
}forEach _shopItems;

lbSetCurSel [1500, 0];
[]call ClientModules_fnc_shopSystemRefresh;
