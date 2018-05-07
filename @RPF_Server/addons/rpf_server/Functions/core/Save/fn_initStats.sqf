/*
Author: Kerkkoh
Last Edit: 23.11.2015
*/
params ["_player", "_firstLogin"];
private["_uid", "_fetch", "_res"];

if (isNil "extDB_SQL_CUSTOM_ID") then {
	[]call ExternalS_fnc_ExtDBinit;
};

_uid = getPlayerUID _player;

if ((([(format["existPlayerInfo:%1", _uid]), 2] call ExternalS_fnc_ExtDBasync) select 0) select 0) then {
	_fetch = [(format ["playerInfo:%1", _uid]), 2] call ExternalS_fnc_ExtDBasync;
	_res = _fetch select 0;

	[_res select 0, _res select 1, _res select 2, _res select 7] remoteExecCall ["Client_fnc_loadInventory", _player];

	[_player]call Server_fnc_fetchKeys;

	_player setVariable ["cash", _res select 3, true];
	_player setVariable ["bank", _res select 4, true];
	_player setVariable ["bankAccount", _res select 8, true];
	_player setVariable ["cop", 0, true];
	_player setVariable ["copoffduty", _res select 5, true];
	_player setVariable ["ems", 0, true];
	_player setVariable ["emsoffduty", _res select 6, true];
	_player setVariable ["phone", _res select 9, true];
	_player setVariable ["hunger", _res select 10, true];
	_player setVariable ["thirst", _res select 11, true];

	if (_firstLogin) then {
		[_player]call ServerModules_fnc_firstLogin;
	};
} else {
	[format["insertPlayerInfo:%1:%2:%3:%4:%5:%6", _uid, name _player, [uniformItems _player, vestItems _player, backpackItems _player, (assignedItems _player)], [uniform _player, vest _player, backpack _player, headgear _player], getPosATL _player, []call Server_fnc_phoneNumber], 1] call ExternalS_fnc_ExtDBasync;

	uiSleep 2;
	[_player, true] spawn Server_fnc_initStats;
}
