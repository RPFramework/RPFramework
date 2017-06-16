/*
Author: Kerkkoh
First Edit: 18.4.2016

_type
0 - add
1 - delete
*/

params ["_netId", "_type"];
_fishingNet = objectFromNetId _netId;
if (_fishingNet == objNull) exitWith {};

if (_type == 0) then {
	RPF_fishingNets pushBack _fishingNet;
} else {
	RPF_fishingNets deleteAt (RPF_fishingNets find _fishingNet);
};