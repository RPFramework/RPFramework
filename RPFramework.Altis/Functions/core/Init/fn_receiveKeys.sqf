/*
Author: Kerkkoh
First Edit: 18.7.2017
*/
params ["_keys"];

RPF_vehKeys = [];

{
	_id = _x select 0;
	_key = _x select 1;
	
	RPF_vehKeys pushBack _key;
}forEach _keys;
