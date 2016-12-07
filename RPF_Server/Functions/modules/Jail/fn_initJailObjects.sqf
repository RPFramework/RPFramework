/*
Author: Kerkkoh
First Edit: 5.12.2016
*/

_physicals = [
	["Land_Canal_Wall_10m_F", [16495.541016,12801.587891,4.5], [[0,1,0],[0,0,1]]],
	["Land_Canal_Wall_10m_F", [16505.318359,12801.59668,4.5], [[0,1,0],[0,0,1]]],
	["Land_Canal_Wall_10m_F", [16495.144531,12792.863281,4.5], [[-8.74228e-008,-1,0],[-0,0,1]]],
	["Land_Canal_Wall_10m_F", [16505.0488281,12792.891602,4.5], [[-8.74228e-008,-1,0],[-0,0,1]]],
	["Land_Canal_Wall_10m_F", [16500.242188,12797.445313,4.5], [[1,-4.37114e-008,0],[0,-0,1]]],
	["Land_Canal_Wall_10m_F", [16491.279297,12797.490234,4.5], [[1,-4.37114e-008,0],[0,-0,1]]],
	["Land_Canal_Wall_10m_F", [16509.322266,12797.209961,4.5], [[-1,4.88762e-007,0],[0,0,1]]]
];
_markers = [
	["jail",[16495.787109,12796.915039,0.000555992],"ICON","hd_dot","Jail"]
];
{
	_obj = (_x select 0) createVehicle (_x select 1);
	_obj setposATL (_x select 1);
	_obj setVectorDirAndUp (_x select 2);
	_obj setposATL (_x select 1);
}forEach _physicals;
{
	_marker = createMarker [_x select 0, _x select 1];
	_marker setMarkerShape (_x select 2);
	_marker setMarkerType (_x select 3);
	_marker setMarkerText (_x select 4);
}forEach _markers;
