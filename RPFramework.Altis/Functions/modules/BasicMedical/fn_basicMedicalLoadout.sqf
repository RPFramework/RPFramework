/*
Author: Kerkkoh
First Edit: 25.12.2016

Additional Information:
*/
params ["_mode", "_player", "_arr"];


private _return = [];

// Mode 0 = saving
if (_mode isEqualTo 0) then {
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
	_return = [[(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)], [(uniform _player), (vest _player), (backpack _player), (headgear _player)], _weapons];
} else {
	_arr params ["_items", "_clothes", "_weapons"];

	removeAllItems _player;
	removeAllContainers _player;
	removeAllWeapons _player;
	removeAllAssignedItems _player;
	removeUniform _player;
	removeVest _player;
	removeBackpack _player;
	removeHeadgear _player;

	{
		switch (_x select 0) do {
			case 0: {
				_player addWeapon (_x select 1);
				_player addPrimaryWeaponItem ((_x select 2) select 0);
				{_player addPrimaryWeaponItem _x;}count (_x select 3);
				_player setAmmo [primaryWeapon _player, (_x select 4)];
			};
			case 1: {
				_player addWeapon (_x select 1);
				_player addSecondaryWeaponItem ((_x select 2) select 0);
				{_player addSecondaryWeaponItem _x;}count (_x select 3);
				_player setAmmo [secondaryWeapon _player, (_x select 4)];
			};
			case 2: {
				_player addWeapon (_x select 1);
				_player addHandgunItem ((_x select 2) select 0);
				{_player addHandgunItem _x;}count (_x select 3);
				_player setAmmo [handgunWeapon _player, (_x select 4)];
			};
		};
		true;
	}count _weapons;

	player addUniform (_clothes select 0);
	player addVest (_clothes select 1);
	player addBackpack (_clothes select 2);
	player addHeadgear (_clothes select 3);

	{player addItemToUniform _x; true}count (_items select 0);
	{player addItemToVest _x; true}count (_items select 1);
	{player addItemToBackpack _x; true}count (_items select 2);
	{player addItem _x; player assignItem _x; true}count (_items select 3);
};

_return
