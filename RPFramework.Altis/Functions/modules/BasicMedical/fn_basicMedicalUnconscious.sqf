/*
Author: Kerkkoh
First Edit: 29.4.2016

Additional Information:
*/
player action ["eject", vehicle player];

player switchMove "";
player playMoveNow "AinjPpneMstpSnonWrflDnon";
sleep 4;
player enableSimulation false;
player setVariable ["tf_globalVolume", 0.1];
player setVariable ["tf_unable_to_use_radio", false];

player setVariable ["unconscious", true, true];
player setVariable ["stabilized", false, true];

_timer = time + RPF_UnconsciousTime;

_uid = str (getPlayerUID player);
_positionPlayer = getPos player;
_medics = []call Client_fnc_getMedics;
{
	[0, _uid, _positionPlayer] remoteExecCall ["ClientModules_fnc_basicMedicalMarker", _x];
	_unconsciousMarker = createMarkerLocal [_uid, _positionPlayer];
	_unconsciousMarker setMarkerShapeLocal "ICON";
	_unconsciousMarker setMarkerTypeLocal "KIA";
	_unconsciousMarker setMarkerTextLocal "[EMS] Unconscious Person";
	_unconsciousMarker setMarkerColorLocal "ColorRed";
}forEach _medics;
_stabilizedOnce = false;
for "_i" from 0 to 1 step 0 do {
	if (!alive player || time >= _timer || !(player getVariable "unconscious") || isNull player) exitWith {};
	if (player getVariable "stabilized" && !_stabilizedOnce) then {
		_newTime = RPF_UnconsciousTime * 2;
		_timer = _timer + _newTime;
		_stabilizedOnce = true;
	};
	_text = format ["You're bleeding out in %1 seconds!", round (_timer - time)];
	cutText [_text,"BLACK FADED",1];
	sleep 0.1;
};

switch (true) do {
    case (time >= _timer): {
		_uid = str (getPlayerUID player);
		_positionPlayer = getPos player;
		_medics = []call Client_fnc_getMedics;
		{
			[1, _uid, _positionPlayer] remoteExecCall ["ClientModules_fnc_basicMedicalMarker", _x];
		}forEach _medics;
		player enableSimulation true;
		player setVariable ["tf_globalVolume", 1.0];
		player setVariable ["tf_unable_to_use_radio", true];
		player setVariable ["unconscious", false, true];
		player setVariable ["stabilized", false, true];
		player allowDamage true;
		cutText ["","PLAIN",1];
		_money = "Land_Money_F" createVehicle position player;
		_cash = player getVariable "cash";
		_money setVariable ["money", _cash, true];
		player setVariable ["cash", 0, true];
		player setDamage 1;
	};
    case (!(player getVariable "unconscious")): {
		_uid = str (getPlayerUID player);
		_positionPlayer = getPos player;
		_medics = []call Client_fnc_getMedics;
		{
			[1, _uid, _positionPlayer] remoteExecCall ["ClientModules_fnc_basicMedicalMarker", _x];
		}forEach _medics;
		player enableSimulation true;
		player switchMove "";
		player allowDamage true;
		player setVariable ["tf_globalVolume", 1.0];
		player setVariable ["tf_unable_to_use_radio", true];
		player setVariable ["stabilized", false, true];
		cutText ["","PLAIN",1];
	};
};