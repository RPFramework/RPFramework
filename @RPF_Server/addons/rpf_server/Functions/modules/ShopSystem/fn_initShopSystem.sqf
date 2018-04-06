/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

diag_log (localize "STR_RPF_SHOPSYSTEM_INIT");

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'buyableThing'})", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_SHOPSYSTEM_BUYTHIS", "[cursorObject] call ClientModules_fnc_openPhysicalShop"]
	],
	[
		["!(isNil {cursorObject getVariable 'shopSystemShop'})", "(player distance cursorObject) <= 5"],
		["STR_RPF_MODULES_SHOPSYSTEM_OPENSHOP", "[cursorObject] call ClientModules_fnc_openVirtualShop"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_INTERACTION", _menuItems]call Server_fnc_addSubInteractions;

[]call ServerModules_fnc_initShops;
[]call ServerModules_fnc_initPricesArray;