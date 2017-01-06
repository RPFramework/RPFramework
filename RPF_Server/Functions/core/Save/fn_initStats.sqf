/*
Author: Kerkkoh
Last Edit: 23.11.2015
*/
params ["_player", "_firstLogin"];

_uid = getPlayerUID _player;

_check = [0, (format["existPlayerInfo:%1", _uid])] call ExternalS_fnc_ExtDBquery;

if ((_check select 0) select 0) then {
	_fetchstr = format ["playerInfo:%1", _uid];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	_res = _fetch select 0;
	
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
	
	[_res select 0, _res select 1, _res select 2, _res select 7] remoteExecCall ["Client_fnc_loadInventory", _player];
	
	if (_firstLogin) then {
		[_player]call ServerModules_fnc_firstLogin;
	};
} else {
	_insertstr = format["insertPlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11", _uid, name _player, [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)], [(uniform _player), (vest _player), (backpack _player), (headgear _player)], [], 1, 2000, -1, -1, position _player, []call Server_fnc_phoneNumber];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
	
	uiSleep 4;
	
	[_player, true] spawn Server_fnc_initStats;
}

