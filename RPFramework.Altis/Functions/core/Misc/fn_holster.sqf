/*
Author: Kerkkoh
First Edit: 28.11.2015
Last Edit: 05.09.2018
*/

player action ['SWITCHWEAPON',player,player,-1]; 
waitUntil {currentWeapon player == '' or {primaryWeapon player == '' && handgunWeapon player == ''}};
