/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

params ["_house", "_player"];

_class = typeOf _house;
_pos = getPos _house;
_owner = getPlayerUID _player;

_insertstr = format ["insertHouse:%1:%2:%3", _class, _pos, _owner];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;

_fetchstr = format ["houseId:%1", _pos];
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
_res = _fetch select 0;
_id = _res select 0;

_house setVariable ["id", _id, true];
_house setVariable ["owner", _owner, true];
_house setVariable ["locked", false, true];

[_house,_pos] call ServerModules_fnc_setupHouseContainer;

["STR_RPF_HOUSING_WELCOME"] remoteExecCall ["Client_fnc_hintMP", _player];
