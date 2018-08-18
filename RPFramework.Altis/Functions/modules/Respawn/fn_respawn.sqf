/*
Author: Kerkkoh
First Edit: 18.8.2018
*/

removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

player addUniform "U_C_Poloshirt_blue";
player linkItem "ItemMap";
player linkItem "ItemCompass";

player setPos (getArray (missionConfigFile >> "RPF_Config" >> "spawnPoint"));
