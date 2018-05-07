/*
Author: Kerkkoh
Last Edit: 26.11.2015
*/

params ["_player", "_id", "_uid", "_name"];

if (alive _player && (_player getVariable ["loadedIn", false])) then {
	private _weapons = [];
	if (primaryWeapon _player != "") then {
		_weapons pushBack [0, primaryWeapon _player, primaryWeaponMagazine _player, primaryWeaponItems _player, _player ammo (primaryWeapon _player)];
	};
	if (secondaryWeapon _player != "") then {
		_weapons pushBack [1, secondaryWeapon _player, secondaryWeaponMagazine _player, secondaryWeaponItems _player, _player ammo (secondaryWeapon _player)];
	};
	if (handgunWeapon _player != "") then {
		_weapons pushBack [2, handgunWeapon _player, handgunMagazine _player, handgunItems _player, _player ammo (handgunWeapon _player)];
	};

	[0, format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9", [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)], [(uniform _player), (vest _player), (backpack _player), (headgear _player)], _weapons, _player getVariable "cash", _player getVariable "bank", getPosATL _player, (_player getVariable "hunger"), (_player getVariable "thirst"), _uid]] call ExternalS_fnc_ExtDBquery;
};
