/*
Author: Kerkkoh
First Edit: 18.12.2016
*/
params["_c"];
private ["_name","_f"];

_name = ctrlText 1401;
closeDialog 0;

_f = -1;
{
	if ((_x select 0) == (getPlayerUID _c)) exitWith {
		_f = _forEachIndex;
	};
}forEach RPF_savedNames;

if (_f != -1) then {
	(RPF_savedNames select _f) set [1, _name];
} else {
	RPF_savedNames pushBack [getPlayerUID _c, _name];
};
