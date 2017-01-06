/*
Author: Kerkkoh
First Edit: 22.4.2016
*/
RPF_curDelivery = ["", 0, 0, 0, "", 0];

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'delivery'})", "(RPF_curDelivery select 4) == ''", "(player distance cursorObject) <= 5"],
		["Tasks", "[] call ClientModules_fnc_openTakeDelivery"]
	],
	[
		["!(isNil {cursorObject getVariable 'delivery'})", "(RPF_curDelivery select 4) != ''", "(RPF_curDelivery select 3) != 0", "(player distance cursorObject) <= 5"],
		["Take Items", "[] call ClientModules_fnc_openTakeDeliveryItem"]
	],
	[
		["!(isNil {cursorObject getVariable 'dp1'}) || !(isNil {cursorObject getVariable 'dp2'})", "!(isNil {cursorObject getVariable (RPF_curDelivery select 4)})", "count (attachedObjects player) > 0", "(player distance cursorObject) <= 5"],
		["Deliver", "[] call ClientModules_fnc_openDeliverDelivery"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;