/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
params ["_items", "_clothes", "_weapons", "_position"];

player setPosATL _position;

player setVariable ["loadedIn", true, true];

removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

{
	switch (_x select 0) do {
		case 0: {
			player addWeapon (_x select 1);
			player addPrimaryWeaponItem ((_x select 2) select 0);
			{player addPrimaryWeaponItem _x;}count (_x select 3);
			player setAmmo [primaryWeapon player, (_x select 4)];
		};
		case 1: {
			player addWeapon (_x select 1);
			player addSecondaryWeaponItem ((_x select 2) select 0);
			{player addSecondaryWeaponItem _x;}count (_x select 3);
			player setAmmo [secondaryWeapon player, (_x select 4)];
		};
		case 2: {
			player addWeapon (_x select 1);
			player addHandgunItem ((_x select 2) select 0);
			{player addHandgunItem _x;}count (_x select 3);
			player setAmmo [handgunWeapon player, (_x select 4)];
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
