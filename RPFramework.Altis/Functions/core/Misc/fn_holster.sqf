/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
if (RPF_Holstered == 1) then {
	player addWeapon RPF_HWeapon;
	player addMagazine (RPF_HMagazine select 0);
	{player addHandgunItem _x;}forEach RPF_HItems;
	RPF_Holstered = 0;
} else {
	RPF_HWeapon = handgunWeapon player;
	RPF_HMagazine = handgunMagazine player;
	RPF_HItems = handgunItems player;
	player removeWeapon RPF_HWeapon;
	RPF_Holstered = 1;
};