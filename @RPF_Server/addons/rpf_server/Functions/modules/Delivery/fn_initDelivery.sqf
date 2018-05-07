/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

diag_log (localize "STR_RPF_DELIVERY_INIT");

private _menuItems = [
	[
		["!(isNil {cursorObject getVariable 'delivery'})", "(RPF_curDelivery select 4) == ''", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_DELIVERY_TASKS"), "[] call ClientModules_fnc_openTakeDelivery"]
	],
	[
		["!(isNil {cursorObject getVariable 'delivery'})", "(RPF_curDelivery select 4) != ''", "(RPF_curDelivery select 3) != 0", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_DELIVERY_TAKEITEMS"), "[] call ClientModules_fnc_openTakeDeliveryItem"]
	],
	[
		["!(isNil {cursorObject getVariable (RPF_curDelivery select 4)})", "count (attachedObjects player) > 0", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_DELIVERY_DELIVER"), "[] call ClientModules_fnc_openDeliverDelivery"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItems]call Server_fnc_addSubInteractions;

[]call ServerModules_fnc_initDeliveryObjects;
