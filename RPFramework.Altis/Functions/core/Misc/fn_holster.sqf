/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
if (RPF_Holstered == 1) then {
	player addWeapon (RPF_Holster select 0);
	player addMagazine ((RPF_Holster select 1) select 0);
	{player addHandgunItem _x;}forEach (RPF_Holster select 2);
	player setAmmo [handgunWeapon player, (RPF_Holster select 3)];
	RPF_Holstered = 0;
} else {
	RPF_Holster = [handgunWeapon player, handgunMagazine player, handgunItems player, player ammo (handgunWeapon player)];
	player removeWeapon (handgunWeapon player);
	RPF_Holstered = 1;
};