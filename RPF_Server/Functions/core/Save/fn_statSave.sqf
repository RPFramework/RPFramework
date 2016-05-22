/*
Author: Kerkkoh
Last Edit: 26.11.2015
*/

params ["_player", "_id", "_uid", "_name"];

_cash = _player getVariable "cash";
_bank = _player getVariable "bank";
_garage = _player getVariable "garage";

_position = position _player;

_items = [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)];
_clothes = [(uniform _player), (vest _player), (backpack _player), (headgear _player)];
_pweapon = primaryWeapon _player;
_sweapon = handgunWeapon _player;

_updatestr = format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9", _items, _clothes, _pweapon, _sweapon, _cash, _bank, _position, _garage, _uid];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;