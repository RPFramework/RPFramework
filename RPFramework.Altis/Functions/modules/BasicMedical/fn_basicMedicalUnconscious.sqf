/*
Author: Kerkkoh
First Edit: 25.12.2016

Additional Information:
*/

_unit = _this select 0;
_deadLoadout = [0, _unit, []]call ClientModules_fnc_basicMedicalLoadout;

_unit setVariable ["unconscious", true, true];

_timer = time + RPF_UnconsciousTime;

_medics = []call Client_fnc_getMedics;
{
	[0, getPlayerUID _unit, getPos _unit] remoteExecCall ["ClientModules_fnc_basicMedicalMarker", _x];
}forEach _medics;

_escEH = (findDisplay 46) displayAddEventHandler ["KeyDown", {
	if ((_this select 1) == 1) then {
		true;
	}
}];

_cash = _unit getVariable "cash";
[_cash]call Client_fnc_removeCash;
_money = "Land_Money_F" createVehicle position _unit;
_money setVariable ["money", _cash, true];

for "_i" from 0 to 1 step 0 do {
	if (time >= _timer || !(_unit getVariable ["unconscious",  false])) exitWith {};
	_text = format ["You're bleeding out in %1 seconds!", round (_timer - time)];
	cutText [_text,"BLACK FADED",1];
	sleep 0.1;
};

if (!(_unit getVariable ["unconscious",  false])) then {
	[1, player, _deadLoadout]call ClientModules_fnc_basicMedicalLoadout;
	
	player setPos (getPos _unit);
	player setDir (getDir _unit);
} else {
	_unit setVariable ["unconscious", nil, true];
	player setVariable ["unconscious", nil, true];
};
_medics = []call Client_fnc_getMedics;
{
	[1, getPlayerUID player, getPos _unit] remoteExecCall ["ClientModules_fnc_basicMedicalMarker", _x];
}forEach _medics;
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _escEH];
deleteVehicle _unit;
cutText ["","PLAIN",1];
player setVariable ["unconscious", nil, true];
