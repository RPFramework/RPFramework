/*
Author: Kerkkoh
First Edit: 5.12.2016
*/

params["_pos", "_time", "_reason"];

player setVariable ["jailed", true, true];

player setPos _pos;

private _timer = time + (_time * 60);

for "_i" from 0 to 1 step 0 do {
	if (!alive player || time >= _timer || isNull player || !(player getVariable ["jailed", false])) exitWith {};
	cutText [format [(localize "STR_RPF_MODULES_JAIL_TIMELEFT"), ceil ((_timer - time) / 60), _reason],"PLAIN",1];
	sleep 10;
};

cutText ["","PLAIN",1];

if (!(player getVariable "jailed")) then {};

[player] remoteExecCall ["ServerModules_fnc_releaseFromJail", 2];
