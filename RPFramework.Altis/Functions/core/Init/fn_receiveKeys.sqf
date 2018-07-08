/*
Author: Kerkkoh
First Edit: 18.7.2017
*/
params ["_keys"];

RPF_vehKeys = [];

{
	RPF_vehKeys pushBack (_x select 1);
	true;
}count _keys;
