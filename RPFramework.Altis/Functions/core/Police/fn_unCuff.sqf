/*
Author: Kerkkoh
First Edit: 28.11.2015
*/

params ["_ct"];

_ct setVariable ["cuffed", false, true];

[[player, "handcuffs"], "Client_fnc_playSound", true, false] spawn BIS_fnc_MP;
[[], "Client_fnc_unCuffTarget", _ct, false] spawn BIS_fnc_MP;
