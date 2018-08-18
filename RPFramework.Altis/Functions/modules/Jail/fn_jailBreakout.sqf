/*
Author: Kerkkoh
First Edit: 6.12.2016
*/
private ["_distanceFail", "_rnd"];

ctrlShow [1600, false];
_distanceFail = false;

_rnd = floor random 5;
for "_i" from 0 to 15 step 1 do {
	ctrlSetText [1000, (localize "STR_RPF_MODULES_JAIL_HACKINGONE")];
	sleep 1;
	if (((position player) distance (getMarkerPos 'jail')) > 15) exitWith {_distanceFail = true;};
	ctrlSetText [1000, (localize "STR_RPF_MODULES_JAIL_HACKINGTWO")];
	sleep 1;
	if (((position player) distance (getMarkerPos 'jail')) > 15) exitWith {_distanceFail = true;};
	ctrlSetText [1000, (localize "STR_RPF_MODULES_JAIL_HACKINGTHREE")];
	sleep 1;
	if (((position player) distance (getMarkerPos 'jail')) > 15) exitWith {_distanceFail = true;};
};

if (!_distanceFail) then {
	if (_rnd == 0) then {
		ctrlSetText [1000, (localize "STR_RPF_MODULES_JAIL_SUCCESS")];
		[] remoteExecCall ["ServerModules_fnc_breakoutJail", 2];
		if (true) exitWith {};
	} else {
		{[] remoteExecCall ["ClientModules_fnc_jailBreakAlert", _x]; true;}count ([]call Client_fnc_getPolice);
		ctrlSetText [1000, (localize "STR_RPF_MODULES_JAIL_HACKINGTWO")];
		sleep 2;
		if (((position player) distance (getMarkerPos 'jail')) > 15) exitWith {_distanceFail = true;};
		ctrlSetText [1000, (localize "STR_RPF_MODULES_JAIL_HACKINGONE")];
		sleep 3;
		if (((position player) distance (getMarkerPos 'jail')) > 15) exitWith {_distanceFail = true;};
		ctrlSetText [1000, (localize "STR_RPF_MODULES_JAIL_ERROR")];
		sleep 5;
		if (true) exitWith {};
	};
};

closeDialog 0;
