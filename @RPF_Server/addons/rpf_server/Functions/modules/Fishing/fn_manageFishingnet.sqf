/*
Author: Kerkkoh
First Edit: 18.4.2016

_type - BOOLEAN
---------------
true - Add
false - Delete
*/

params["_fishingNetID", "_type"];

if (_type) then {
	RPF_fishingNets pushBack _fishingNetID;
} else {
	RPF_fishingNets deleteAt (RPF_fishingNets find _fishingNetID);
};
