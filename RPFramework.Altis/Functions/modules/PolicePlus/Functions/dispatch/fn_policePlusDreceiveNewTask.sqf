/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

params ["_id", "_name", "_desc", "_pos", "_au"];

private _dm = createMarkerLocal [str _id, _pos];
_dm setMarkerShapeLocal "ICON";
_dm setMarkerTypeLocal "hd_objective";
_dm setMarkerTextLocal _name;
_dm setMarkerColorLocal "ColorRed";
RPF_dispatchMarkers pushBack _dm;
