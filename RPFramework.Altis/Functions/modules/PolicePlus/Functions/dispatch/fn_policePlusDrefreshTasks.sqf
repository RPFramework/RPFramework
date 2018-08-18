/*
Author: Kerkkoh
First Edit: 28.9.2016

[id, "Name", "Description", position, [assignedunits]]
*/
params["_tasks"];

lbClear 1500;
{
	private _new = lbAdd [1500, _x select 1];
	lbSetData [1500, _new, str (_x select 0)];
	private _dm = createMarkerLocal [str (_x select 0), _x select 3];
	_dm setMarkerShapeLocal "ICON";
	_dm setMarkerTypeLocal "hd_objective";
	_dm setMarkerTextLocal (_x select 1);
	_dm setMarkerColorLocal "ColorRed";
	RPF_dispatchMarkers pushBack _dm;
	true;
}count _tasks;

RPF_currentDispatchTasks = _tasks;
