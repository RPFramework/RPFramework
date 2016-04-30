/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
params ["_ct"];

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
[[player, "handcuffs"], "Client_fnc_playSound", true, false] spawn BIS_fnc_MP;
waitUntil {sleep 0.01; animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};

[[], "Client_fnc_cuffTarget", _ct, false] spawn BIS_fnc_MP;