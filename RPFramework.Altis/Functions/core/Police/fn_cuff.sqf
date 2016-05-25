/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
params ["_ct"];

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
[player, "handcuffs"] remoteExecCall ["Client_fnc_playSound", 0];
waitUntil {sleep 0.01; animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};

remoteExecCall ["Client_fnc_cuffTarget", _ct];