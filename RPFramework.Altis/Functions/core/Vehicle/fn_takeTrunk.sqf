/*
Author: Kerkkoh
First Edit: 23.9.2016

Trunk format:
[
	[randID, "classname", _vars]
]
*/
params ["_veh"];

if ((lbCurSel 1500) == -1) exitWith {};
_idS = lbData [1500, lbCurSel 1500];
_id = call compile _idS;
_trunk = _veh getVariable ["trunk", []];

_pia = -1;
_classname = "";
_vars = [];
{
	if ((_x select 0) == _id) then {
		_classname = (_x select 1);
		_vars = (_x select 2);
		_pia = _forEachIndex;
	};
}forEach _trunk;

_trunkItem = _classname createVehicle [0,0,0];
_trunkItem setPos (getPos player);

{
	_trunkItem setVariable [_x select 0, _x select 1, true];
}forEach _vars;

_trunkItem setVariable ["vars", _vars, true];
_trunk deleteAt _pia;

[_trunkItem] call Client_fnc_pickUp;
RPF_ownedFurniture pushBack _trunkItem;

_veh setVariable ["trunk", _trunk, true];

closeDialog 0;
