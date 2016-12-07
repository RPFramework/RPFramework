/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
params ["_items", "_clothes", "_weapons", "_position"];

RPF_Cars = [];
RPF_hunger = 0;
RPF_thirst = 0;

player setPos _position;

removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

if ((count _weapons) > 0) then {
	{
		switch (_x select 0) do {
			case 0: {
				player addWeapon (_x select 1);
				player addPrimaryWeaponItem ((_x select 2) select 0);
				{player addPrimaryWeaponItem _x;}forEach (_x select 3);
				player setAmmo [primaryWeapon player, (_x select 4)];
			};
			case 1: {
				player addWeapon (_x select 1);
				player addSecondaryWeaponItem ((_x select 2) select 0);
				{player addSecondaryWeaponItem _x;}forEach (_x select 3);
				player setAmmo [secondaryWeapon player, (_x select 4)];
			};
			case 2: {
				player addWeapon (_x select 1);
				player addHandgunItem ((_x select 2) select 0);
				{player addHandgunItem _x;}forEach (_x select 3);
				player setAmmo [handgunWeapon player, (_x select 4)];
			};
		};
	}forEach _weapons;
};

player addUniform (_clothes select 0);
player addVest (_clothes select 1);
player addBackpack (_clothes select 2);
player addHeadgear (_clothes select 3);

_uitems = _items select 0;
_vitems = _items select 1;
_bitems = _items select 2;
_aitems = _items select 3;
{player addItemToUniform _x}forEach _uitems;
{player addItemToVest _x}forEach _vitems;
{player addItemToBackpack _x}forEach _bitems;
{player addItem _x; player assignItem _x}forEach _aitems;

player setVariable ["loadedIn", true, true];