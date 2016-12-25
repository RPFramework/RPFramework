/*
Author: Kerkkoh
First Edit: 25.12.2016

Additional Information:
*/
params ["_mode", "_player", "_arr"];

_return = [];

if (_mode == 0) then {
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
_return = [_items, _clothes, _weapons];
} else {
	_items = _arr select 0;
	_clothes = _arr select 1;
	_weapons = _arr select 2;
	
	removeAllItems _player;
	removeAllContainers _player;
	removeAllWeapons _player;
	removeAllAssignedItems _player;
	removeUniform _player;
	removeVest _player;
	removeBackpack _player;
	removeHeadgear _player;
	
	if ((count _weapons) > 0) then {
		{
			switch (_x select 0) do {
				case 0: {
					_player addWeapon (_x select 1);
					_player addPrimaryWeaponItem ((_x select 2) select 0);
					{_player addPrimaryWeaponItem _x;}forEach (_x select 3);
					_player setAmmo [primaryWeapon _player, (_x select 4)];
				};
				case 1: {
					_player addWeapon (_x select 1);
					_player addSecondaryWeaponItem ((_x select 2) select 0);
					{_player addSecondaryWeaponItem _x;}forEach (_x select 3);
					_player setAmmo [secondaryWeapon _player, (_x select 4)];
				};
				case 2: {
					_player addWeapon (_x select 1);
					_player addHandgunItem ((_x select 2) select 0);
					{_player addHandgunItem _x;}forEach (_x select 3);
					_player setAmmo [handgunWeapon _player, (_x select 4)];
				};
			};
		}forEach _weapons;
	};
	
	_player addUniform (_clothes select 0);
	_player addVest (_clothes select 1);
	_player addBackpack (_clothes select 2);
	_player addHeadgear (_clothes select 3);

	_uitems = _items select 0;
	_vitems = _items select 1;
	_bitems = _items select 2;
	_aitems = _items select 3;
	{_player addItemToUniform _x}forEach _uitems;
	{_player addItemToVest _x}forEach _vitems;
	{_player addItemToBackpack _x}forEach _bitems;
	{_player addItem _x; _player assignItem _x}forEach _aitems;
};

_return