/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

private _dp = selectRandom ("true" configClasses (missionConfigFile >> "RPF_deliveryModule" >> "locations"));

RPF_curDelivery set [4, configName(_dp)];

private _marker = createMarkerLocal ["dp", getArray(_dp >> "pos")];
_marker setMarkerShapeLocal "ICON";
_marker setMarkerTypeLocal "hd_dot";
_marker setMarkerTextLocal (localize "STR_RPF_MODULES_DELIVERY_DP");

["TaskAssigned", ["",(localize "STR_RPF_MODULES_DELIVERY_DELIVERITEMS")]] call BIS_fnc_showNotification;

closeDialog 0;

[]call ClientModules_fnc_openTakeDeliveryItem;
