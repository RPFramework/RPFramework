/*
Author: Kerkkoh
First Edit: 25.12.2016

Additional Information:
*/

[player, [getArray (missionConfigFile >> "RPF_Config" >> "spawnPoint")]] remoteExec ["ServerModules_fnc_medicalStatSave", 2];

_unit = _this select 0;
_deadLoadout = [0, _unit, []]call ClientModules_fnc_basicMedicalLoadout;

_unit setVariable ["unconscious", true, true];
player setVariable ["loadedIn", false, true];

//purgatory for now at least
[]spawn {
	uiSleep 2;
	player setPos (getArray(missionConfigFile >> "RPF_basicMedicalModule" >> "purgatoryPosition"));
	player enableSimulation false;
	player allowDamage false;
};

_timer = time + (getNumber(missionConfigFile >> "RPF_basicMedicalModule" >> "unconsciousTime"));

_medics = []call Client_fnc_getMedics;
{
	[0, getPlayerUID _unit, getPos _unit] remoteExecCall ["ClientModules_fnc_basicMedicalMarker", _x];
}forEach _medics;

_escEH = (findDisplay 46) displayAddEventHandler ["KeyDown", {
	if ((_this select 1) == 1) then {
		true;
	} else {
		false;
	};
}];

_cash = _unit getVariable "cash";
if (_cash != 0) then {
	[_cash]call Client_fnc_removeCash;
	_money = "Land_Money_F" createVehicle position _unit;
	_money setVariable ["money", _cash, true];
};
_unit setVariable ["cash", 0, true];
player setVariable ["cash", 0, true];

for "_i" from 0 to 1 step 0 do {
	if (time >= _timer || !(_unit getVariable ["unconscious",  false]) || !isNil{RPF_forcedRespawn}) exitWith {};
	_text = format [(localize "STR_RPF_MODULES_BASICMEDICAL_BLEEDINGOUT"), round (_timer - time)];
	cutText [_text,"BLACK FADED",1];
	sleep 0.1;
};

RPF_forcedRespawn = nil;

player enableSimulation true;
player allowDamage true;

if (!(_unit getVariable ["unconscious",  false])) then {
	_deadLoadout = [0, _unit, []]call ClientModules_fnc_basicMedicalLoadout;
	[1, player, _deadLoadout]call ClientModules_fnc_basicMedicalLoadout;

	player setPos (getPos _unit);
	player setDir (getDir _unit);
} else {
	_unit setVariable ["unconscious", nil, true];
	player setVariable ["hunger", 0, true];
	player setVariable ["thirst", 0, true];
	[player, 0, getPlayerUID player, name player] remoteExec ["Server_fnc_statSave", 2];

	//return from purgatory to spawnPoint
	player setPos (getArray (missionConfigFile >> "RPF_Config" >> "spawnPoint"));
};

{
	[1, getPlayerUID player, getPos _unit] remoteExecCall ["ClientModules_fnc_basicMedicalMarker", _x];
}forEach ([]call Client_fnc_getMedics);

(findDisplay 46) displayRemoveEventHandler ["KeyDown", _escEH];

deleteVehicle _unit;

cutText ["","PLAIN",1];
player setVariable ["loadedIn", true, true];
player setVariable ["unconscious", nil, true];
