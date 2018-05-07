/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

diag_log (localize "STR_RPF_SHOPSYSTEM_INIT");

private _menuItems = [
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

/*
----RPF_buyPhysicalShopStatements Documentation----
The RPF_buyPhysicalShopStatements array allows module makers to add code within buyPhysicalShop script when a vehicle/item/furniture is bought.
(Often you would want to execute specific code when a player buys one of these things)

The structure is the following
[
[{OurConditionToBeTrue},{OurStatements},2], //The last number is the code block where the code will be added (0- Vehicles ; 1- Items ; 2 - Furnitures)
[{not(isNil "checkVar")},{hint "We are good"},1]
]

Keep in mind that the executed code WILL have access to all local variables in the buyPhysicalShop script.
So,theoretically,it will be just like manually adding code to the buyPhysicalShop script.

Here's the local variables you might want to use:
_ct - Shop Object / Vehicle you are buying
_newfurn - Furniture you are trying to buy
_class - Classname of the item you are buying if it's an item
*/

RPF_buyPhysicalShopStatements = [[],[],[]];

[]call ServerModules_fnc_initShops;
[]call ServerModules_fnc_initPricesArray;

[]spawn {
	uiSleep 5;

	RPF_buyPhysicalShopStatements = compileFinal str RPF_buyPhysicalShopStatements;
	publicVariable "RPF_buyPhysicalShopStatements";
};
