/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

_locations = [
	["dp1", [14882.873, 11054.816, 0]],
	["dp2", [16987.119, 14904.747, 0]]
];

_dp = selectRandom _locations;

_dpvar = _dp select 0;
_loc = _dp select 1;

RPF_curDelivery set [4, _dpvar];

_marker = createMarkerLocal ["dp", _loc];
_marker setMarkerShapeLocal "ICON";
_marker setMarkerTypeLocal "hd_dot";
_marker setMarkerTextLocal "Delivery Point";

["TaskAssigned", ["","Deliver items"]] call BIS_fnc_showNotification;

closeDialog 0;

[]call ClientModules_fnc_openTakeDeliveryItem;