/*
Author: Kerkkoh
First Edit: 22.4.2016
*/


/*
----RPF_buyPhysicalShopStatements Documentation----
The RPF_buyPhysicalShopStatements array allows module makers to add code within buyPhysicalShop script when a furniture is bought.
(Often you would want to execute specific code when a player buys a furniture)

The structure is the following
[
[{OurConditionToBeTrue},{OurStatements}],
[{not(isNil "checkVar")},{hint "We are good"}]
]

Keep in mind that the executed code WILL have access to all local variables in the buyPhysicalShop script.
So,theoretically,it will be just like manually adding code to the buyPhysicalShop script.

Here's the local variables you might want to use:
_ct - Shop Object
_newfurn - Object you are trying to buy
*/
RPF_buyPhysicalShopStatements = [];

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'buyableThing'})", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_SHOPSYSTEM_BUYTHIS"), "[cursorObject] call ClientModules_fnc_openPhysicalShop"]
	],
	[
		["!(isNil {cursorObject getVariable 'shopSystemShop'})", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_SHOPSYSTEM_OPENSHOP"), "[cursorObject] call ClientModules_fnc_openVirtualShop"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;