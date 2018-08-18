/*
Author: Kerkkoh
First Edit: 28.9.2016
*/
params["_police", "_medics", "_tasks"];
private ["_new","_dm", "_markers"];

createDialog "dispatch";

RPF_dispatchPoliceCars = _police;
RPF_dispatchMedicCars = _medics;
RPF_currentDispatchTasks = _tasks;
RPF_dispatchMarkers = [];

lbClear 1500;
{
	_new = lbAdd [1500, _x select 1];
	lbSetData [1500, _new, str (_x select 0)];
	_dm = createMarkerLocal [str (_x select 0), _x select 3];
	_dm setMarkerShapeLocal "ICON";
	_dm setMarkerTypeLocal "hd_objective";
	_dm setMarkerTextLocal (_x select 1);
	_dm setMarkerColorLocal "ColorRed";
	RPF_dispatchMarkers pushBack _dm;
	true;
}count _tasks;

lbClear 1502;
lbClear 1501;
{
	_new = lbAdd [1502, _x select 1];
	lbSetData [1502, _new, _x select 1];
	true;
}count _medics;
{
	_new = lbAdd [1501, _x select 1];
	lbSetData [1501, _new, _x select 1];
	true;
}count _police;

lbClear 2100;
lbClear 2101;
{
	_new = lbAdd [2100, _x select 0];
	lbSetData [2100, _new, _x select 1];
	_new = lbAdd [2101, _x select 0];
	lbSetData [2101, _new, _x select 1];
	true;
}count [[(localize "STR_RPF_MODULES_POLICEPLUS_BUSY"), "[1, 0, 0, 1]"],[(localize "STR_RPF_MODULES_POLICEPLUS_AVAILABLE"), "[0, 1, 0, 1]"],[(localize "STR_RPF_MODULES_POLICEPLUS_AWAY"), "[1, 1, 0, 1]"]];

_markers = [];
RPF_dispatching = true;
[]spawn ClientModules_fnc_policePlusDmessages;
for "_i" from 0 to 1 step 0 do {
	if (isNil "RPF_dispatching") exitWith {
		[] remoteExecCall ["ServerModules_fnc_policePlusDremoveDispatch", 2];
		{deleteMarkerLocal _x;} count _markers;
		{deleteMarkerLocal _x;} count RPF_dispatchMarkers;
		deleteMarkerLocal "tdm";
		RPF_dispatchMedicCars = nil;
		RPF_dispatchPoliceCars = nil;
		RPF_currentDispatchTasks = nil;
		RPF_dispatchMarkers = nil;
	};

	{
		deleteMarkerLocal _x;
	} count _markers;
	_markers = [];

	{
		private ["_rnd", "_m", "_t"];
		_rnd = format["M%1", round random 9999];
		_m = createMarkerLocal [_rnd, getPos (_x select 0)];
		_m setMarkerShapeLocal "ICON";
		_t = "c_car";
		if (!((_x select 0) isKindOf "Car")) then {
			_t = "c_air";
		};
		_m setMarkerTypeLocal _t;
		_m setMarkerTextLocal (_x select 1);
		_m setMarkerColorLocal "ColorRed";
		_markers pushBack _rnd;
		true;
	}count RPF_dispatchMedicCars;
	{
		private ["_rnd", "_m", "_t"];
		_rnd = format["P%1", round random 9999];
		_m = createMarkerLocal [_rnd, getPos (_x select 0)];
		_m setMarkerShapeLocal "ICON";
		_t = "c_car";
		if (!((_x select 0) isKindOf "Car")) then {
			_t = "c_air";
		};
		_m setMarkerTypeLocal _t;
		_m setMarkerTextLocal (_x select 1);
		_m setMarkerColorLocal "ColorBlue";
		_markers pushBack _rnd;
		true;
	}count RPF_dispatchPoliceCars;
	sleep 0.1;
};
