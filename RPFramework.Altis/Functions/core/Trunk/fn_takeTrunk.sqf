/*
Author: Kerkkoh
First Edit: 23.9.2016

Trunk format:
[
	["randID", "classname", _vars]
]
*/
params ["_veh"];
private["_action", "_tempArray", "_takeAction", "_trunk", "_pia", "_vars", "_classname", "_object"];

if ((lbCurSel 1500) == -1) exitWith {};
_trunk = _veh getVariable ["trunk", []];

_pia = -1;
_vars = [];
{
	if ((_x select 0) isEqualTo (lbData [1500, lbCurSel 1500])) then {
		_classname = (_x select 1);
		_vars = (_x select 2);
		_pia = _forEachIndex;
	};
}forEach _trunk;

_object = _classname createVehicle [0,0,0];
_object setPos (getPos player);

{
	_object setVariable [_x select 0, _x select 1, true];
	true;
}count _vars;

_object setVariable ["vars", _vars, true];
_trunk deleteAt _pia;


/*
* For the action variable there is a whitelist that can be changed by every module
* The format for action variable is [isThereAnAction, [[params for the function], "function name"],[[params for the function], "function name"]]
*									[BOOLEAN, [ARRAY, STRING], [ARRAY, STRING]]
* The first array in index 1 is the function that gets ran in storeTrunk function and second one in the takeTrunk function.
* The object gets appended to the params of the function that gets called so the params become
* [theTrunkObject, your, params, here]
*/

_action = _object getVariable ["action",[false]];
if (_action select 0) then {
	_takeAction = (_action select 2);
	if ((_takeAction select 1) in ((missionConfigFile >> "RPF_Config" >> "trunkWhitelist") call BIS_fnc_getCfgData)) then {
		_tempArray = [_object];
		_tempArray append (_takeAction select 0);
		_tempArray call (missionNamespace getVariable format ["%1", _takeAction select 1]);
	} else {
		diag_log format ["RPFramework error: Function %1 not whitelisted (Trunk)", _takeAction select 1];
	};
};

[_object] call Client_fnc_pickUp;
RPF_ownedFurniture pushBack _object;

_veh setVariable ["trunk", _trunk, true];

closeDialog 0;
