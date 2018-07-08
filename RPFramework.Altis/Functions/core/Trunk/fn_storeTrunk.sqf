/*
Author: Kerkkoh
First Edit: 23.9.2016

Trunk format:
[
	["randID", "classname", _vars]
]
*/
params ["_veh"];
private ["_object", "_action", "_storeAction", "_tempArray", "_class", "_stringName", "_item", "_randID", "_trunk", "_trunkSize", "_count"];

_object = ((attachedObjects player) select 0);

detach _object;
RPF_ownedFurniture deleteAt (RPF_ownedFurniture find _object);
_action = _object getVariable ["action",[false]];


/*
* For the action variable there is a whitelist that can be changed by every module
* The format for action variable is [isThereAnAction, [[params for the store function], "store function name"],[[params for the take function], "take function name"]]
*									[BOOLEAN, [ARRAY, STRING], [ARRAY, STRING]]
* The first array in index 1 is the function that gets ran in storeTrunk function and second one in the takeTrunk function.
* The object gets appended to the params of the function that gets called so the params become
* [theTrunkObject, your, params, here]
*/

if (_action select 0) then {
	_storeAction = (_action select 1);
	if ((_storeAction select 1) in ((missionConfigFile >> "RPF_Config" >> "trunkWhitelist") call BIS_fnc_getCfgData)) then {
		_tempArray = [_object];
		_tempArray append (_storeAction select 0);
		_tempArray call (missionNamespace getVariable format ["%1", _storeAction select 1]);
	} else {
		diag_log format ["RPFramework error: Function %1 not whitelisted (Trunk)", _storeAction select 1];
	};
};

_class = typeOf _object;
_stringName = [_class]call Client_fnc_getVehicleName;
{
	if ((_x select 0) isEqualTo _class) exitWith {
		_stringName = (_x select 1);
	};
}forEach RPF_ItemNames;

_item = lbAdd [1500, _stringName];
_randID = str (round (random 99999));
lbSetData [1500, _item, _randID];

_trunk = _veh getVariable ["trunk", []];
_trunk pushBack [_randID, _class, _object getVariable ["vars", []]];
_veh setVariable ["trunk", _trunk, true];

//Get trunkSize of the vehicle
if (isNil {(findDisplay 1020) getVariable "trunkSize"}) then {
	_trunkSize = round((getNumber(configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad"))/((missionConfigFile >> "RPF_Config" >> "trunkDivivde") call BIS_fnc_getCfgData));
	{
		if ((_x select 0) isEqualTo (typeOf _veh)) then {
			_trunkSize = (_x select 1);
		};
		true;
	}count ((missionConfigFile >> "RPF_Config" >> "trunkException") call BIS_fnc_getCfgData);
} else {
	_trunkSize = (findDisplay 1020) getVariable "trunkSize";
};

_count = count _trunk;

ctrlSetText [1000, (format[(localize "STR_RPF_CORE_TRUNK_TITLE"), _count, _trunksize])];

if (!(count (attachedObjects player) > 0) || _count >= _trunksize) then {
	ctrlShow [1600, false];
} else {
	ctrlShow [1600, true];
};
if (!(count _trunk > 0)) then {
	ctrlShow [1601, false];
} else {
	ctrlShow [1601, true];
};

deleteVehicle _object;
