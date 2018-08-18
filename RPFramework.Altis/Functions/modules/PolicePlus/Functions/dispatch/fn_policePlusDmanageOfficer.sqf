/*
Author: Kerkkoh
First Edit: 28.12.2016
*/
params["_t"];
private ["_car","_id"];

_car = vehicle player;

if (_t == 0) then {
	if (player in (((vehicle player) getVariable "id") select 1)) exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_ALREADYASSIGNED");};

	_id = _car getVariable "id";

	(_id select 1) pushBack player;

	_car setVariable ["id", _id, true];
	ctrlShow [1600, false];
	ctrlShow [1601, true];
} else {
	if (!(player in ((vehicle player) getVariable "units"))) exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_NOTASSIGNED");};

	_id = _car getVariable "id";

	(_id select 1) deleteAt ((_id select 1) find player);

	_car setVariable ["id", _id, true];
	ctrlShow [1600, true];
	ctrlShow [1601, false];
};
