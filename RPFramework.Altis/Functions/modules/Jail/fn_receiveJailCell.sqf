/*
Author: Kerkkoh
First Edit: 5.12.2016
*/

params["_pos", "_time", "_reason"];

_timeInSecs = _time * 60;

player setVariable ["jailed", true, true];

player setPos _pos;

_timer = time + _timeInSecs;

for "_i" from 0 to 1 step 0 do {
	if (!alive player || time >= _timer || isNull player) exitWith {};
	_text = format ["Time left in jail: %1 minutes. Reason: %2", ceil ((_timer - time) / 60), _reason];
	cutText [_text,"PLAIN",1];
	sleep 10;
};

cutText ["","PLAIN",1];

[player] remoteExecCall ["ServerModules_fnc_releaseFromJail", 2];
