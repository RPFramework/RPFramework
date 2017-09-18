/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
if (primaryWeapon player isEqualTo "" && handgunWeapon player isEqualTo "") exitWith {}; //The player does not have any weapons

private _mWeapon = primaryWeapon player;
private _sWeapon = handgunWeapon player;

if (currentWeapon player isEqualTo "") then {
	//The player does not have a weapon in his hands
	player action ["SwitchWeapon", player, player, 0]; //Choose weapon at index 0 (Could be a rifle,an handgun or a launcher)
} else {
	//Player has a weapon in his hands
	//Holster it
	player action ["SwitchWeapon", player, player, -1];
};