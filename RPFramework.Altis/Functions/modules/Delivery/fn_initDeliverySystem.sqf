/*
Author: Kerkkoh
First Edit: 22.4.2016
*/
RPF_curDelivery = ["", 0, 0, 0, "", 0];

_pos = -1;
{
	if ((_x select 0) isEqualTo (localize "STR_RPF_CORE_INTERACTION_CAT_OTHER")) exitWith {
		_pos = _forEachIndex;
	};
}forEach RPF_InteractionSubItems;

_menuItems = [
	[
		["!(isNil {cursorObject getVariable 'delivery'})", "(RPF_curDelivery select 4) == ''", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_DELIVERY_TASKS"), "[] call ClientModules_fnc_openTakeDelivery"]
	],
	[
		["!(isNil {cursorObject getVariable 'delivery'})", "(RPF_curDelivery select 4) != ''", "(RPF_curDelivery select 3) != 0", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_DELIVERY_TAKEITEMS"), "[] call ClientModules_fnc_openTakeDeliveryItem"]
	],
	[
		["!(isNil {cursorObject getVariable 'dp1'}) || !(isNil {cursorObject getVariable 'dp2'})", "!(isNil {cursorObject getVariable (RPF_curDelivery select 4)})", "count (attachedObjects player) > 0", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_DELIVERY_DELIVER"), "[] call ClientModules_fnc_openDeliverDelivery"]
	]
];
{
	(RPF_InteractionSubItems select _pos) pushBack _x;
}forEach _menuItems;