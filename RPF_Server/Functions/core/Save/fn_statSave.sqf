/*
Author: Kerkkoh
Last Edit: 26.11.2015
*/

params ["_player", "_id", "_uid", "_name"];

_cash = _player getVariable "cash";
_bank = _player getVariable "bank";

_position = position _player;

_items = [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)];
_clothes = [(uniform _player), (vest _player), (backpack _player), (headgear _player)];
_weapons = [];
if (primaryWeapon _player != "") then {
	_weapons pushBack [0, primaryWeapon _player, primaryWeaponMagazine _player, primaryWeaponItems _player, _player ammo (primaryWeapon _player)];
};
if (secondaryWeapon _player != "") then {
	_weapons pushBack [1, secondaryWeapon _player, secondaryWeaponMagazine _player, secondaryWeaponItems _player, _player ammo (secondaryWeapon _player)];
};
if (handgunWeapon _player != "") then {
	_weapons pushBack [2, handgunWeapon _player, handgunMagazine _player, handgunItems _player, _player ammo (handgunWeapon _player)];
};

_updatestr = format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7", _items, _clothes, _weapons, _cash, _bank, _position, _uid];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;