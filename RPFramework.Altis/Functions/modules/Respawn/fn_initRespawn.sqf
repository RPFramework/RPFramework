/*
Author: Kerkkoh
First Edit: 8.9.2016
*/

player addEventHandler["Respawn",{
	removeAllItems player;
	removeAllContainers player;
	removeAllWeapons player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;

	player addUniform "U_C_Poloshirt_blue";
	player addItem "ItemMap";
	player assignItem "ItemMap";
	player addItem "ItemCompass";
	player assignItem "ItemCompass";
}];
