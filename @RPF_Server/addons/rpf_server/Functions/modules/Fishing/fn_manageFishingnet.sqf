/*
Author: Kerkkoh
First Edit: 18.4.2016

_type - BOOLEAN
---------------
true - Add
false - Delete
*/

params["_fishingNetID", "_type"];

diag_log "manageFishingnet Server side";
diag_log _this;
diag_log _fishingNetID;
diag_log _type;

if (_type) then {
	diag_log "pushing it back";
	RPF_fishingNets pushBack _fishingNetID;
} else {
	diag_log "deleting it";
	diag_log (RPF_fishingNets find _fishingNetID);
	_r = RPF_fishingNets deleteAt (RPF_fishingNets find _fishingNetID);
	diag_log _r;
};