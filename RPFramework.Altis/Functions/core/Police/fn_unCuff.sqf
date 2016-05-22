/*
Author: Kerkkoh
First Edit: 28.11.2015
*/

params ["_ct"];

_ct setVariable ["cuffed", false, true];

[player, "handcuffs"] remoteExecCall ["Client_fnc_playSound", 0];
remoteExecCall ["Client_fnc_unCuffTarget", _ct];
