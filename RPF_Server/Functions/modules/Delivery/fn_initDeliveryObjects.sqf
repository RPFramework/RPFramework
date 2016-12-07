/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

_physicals = [
	["OfficeTable_01_new_F", [16758.184, 12500.937, 0.275], 143.888, "delivery"],
	["OfficeTable_01_new_F", [14882.873, 11054.816, 0], 178.702, "dp1"],
	["OfficeTable_01_new_F", [16987.119, 14904.747, 0], 89.324, "dp2"]
];
_markers = [
	["deliveryStation",[16758.184, 12500.937, 0.275],"ICON","hd_dot","Delivery Depot"]
];
{
	_veh = (_x select 0) createVehicle (_x select 1);
	_veh setDir (_x select 2);
	_veh setVariable [_x select 3, true, true];
}forEach _physicals;

{
	_marker = createMarker [_x select 0, _x select 1];
	_marker setMarkerShape (_x select 2);
	_marker setMarkerType (_x select 3);
	_marker setMarkerText (_x select 4);
}forEach _markers;
