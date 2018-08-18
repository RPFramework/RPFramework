/*
Author: Kerkkoh
First Edit: 23.4.2016

params
0 - Object - cursorObject

Format:
	["name", buyArray, sellArray]

Example:
_array = [
		"Shop Name",
		[
			["class", BUYprice]
		],
		[
			["class", SELLprice]
		]
	];
Types:
	0 - Item, 1 - Magazine, 2 - Weapon, 3 - Uniform, 4 - Vest, 5 - Headgear, 6 - Backpack

cursorObject setVariable ["shopSystemShop", _array, true];
*/
params ["_ct"];
private ["_array","_shopName"];

createDialog "virtualShop";

_array = _ct getVariable "shopSystemShop";
_shopName = (_array select 0) call BIS_fnc_localize;

if ((_shopName == (localize "STR_RPF_SHOPSYSTEM_POLSTORE")) && (player getVariable ['cop', 0] <= 0)) exitWith {closeDialog 0;};

if ((_shopName == (localize "STR_RPF_SHOPSYSTEM_EMSSTORE")) && (player getVariable ['ems', 0] <= 0)) exitWith {closeDialog 0;};

ctrlSetText [1000, _shopName];

{
	private ["_class","_type","_classPriceType","_stringName","_shopItem"];
	_class = _x select 0;
	_type = [_class] call ClientModules_fnc_findItemType;
	_classPriceType = [_class, [_x,0] call ClientModules_fnc_retrieveGlobalPrice, _type];
	_stringName = "";
	switch (true) do {
	    case (_type in [0,2,3,4,5]): {
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
	true;
}count (_array select 1);

lbSetCurSel [1500, 0];
[]call ClientModules_fnc_shopSystemRefresh;
