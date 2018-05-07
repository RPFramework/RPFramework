/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

params ["_house", "_player"];
private["_pos","_owner", "_fetch"];

_pos = getPos _house;
_owner = getPlayerUID _player;

[0, format ["insertHouse:%1:%2:%3", typeOf _house, _pos, _owner]] call ExternalS_fnc_ExtDBquery;

_fetch = [format ["houseId:%1", _pos], 2] call ExternalS_fnc_ExtDBasync;

_house setVariable ["id", (_fetch select 0) select 0, true];
_house setVariable ["owner", _owner, true];
_house setVariable ["locked", false, true];

[_house,_pos] call ServerModules_fnc_setupHouseContainer;

["STR_RPF_HOUSING_WELCOME"] remoteExecCall ["Client_fnc_hintMP", _player];
