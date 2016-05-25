/*
Author: Kerkkoh
Last Edit: 23.11.2015
*/
_player = _this select 0;

_uid = getPlayerUID _player;

_checkstr = format ["existPlayerInfo:%1", _uid];
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
_booli = (_check select 0) select 0;

if (_booli) then {
	_fetchstr = format ["playerInfo:%1", _uid];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	_returned = str _fetch;
	_res = _fetch select 0;
	
	_items = _res select 0;
	_clothes = _res select 1;
	_pweapon = _res select 2;
	_sweapon = _res select 3;
	_cash = _res select 4;
	_bank = _res select 5;
	_cop = _res select 6;
	_ems = _res select 7;
	_position = _res select 8;
	_garage = _res select 9;
	_bankAccount = _res select 10;
	
	_player setVariable ["cash", _cash, true];
	_player setVariable ["bank", _bank, true];
	_player setVariable ["bankAccount", _bankAccount, true];
	_player setVariable ["cop", _cop, true];
	_player setVariable ["ems", _ems, true];
	_player setVariable ["garage", _garage, true];
	
	[_items, _clothes, _pweapon, _sweapon, _position] remoteExecCall ["Client_fnc_loadInventory", _player];
} else {
	_name = name _player;
	_items = [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)];
	_clothes = [(uniform _player), (vest _player), (backpack _player), (headgear _player)];
	_pweapon = "none";
	_sweapon = "none";
	_cash = 1;
	_bank = 2000;
	_cop = -1;
	_ems = -1;
	_position = position _player;
	_garage = [];
	
	_insertstr = format ["insertPlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12", _uid, _name, _items, _clothes, _pweapon, _sweapon, _cash, _bank, _cop, _ems, _position, _garage];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
	
	sleep 3;
	
	[_player] spawn Server_fnc_initStats;
}

