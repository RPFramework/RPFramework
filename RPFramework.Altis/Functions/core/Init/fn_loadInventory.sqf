/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
params ["_items", "_clothes", "_pweapon", "_sweapon", "_position"];

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

if (_pweapon != "none") then {
	player addWeapon _pweapon;
};
if (_sweapon != "none") then {
	player addWeapon _sweapon;
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
{player assignItem _x}forEach _aitems;

player setVariable ["loadedIn", true, true];