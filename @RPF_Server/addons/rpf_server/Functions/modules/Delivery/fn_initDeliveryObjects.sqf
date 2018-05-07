/*
Author: Kerkkoh
First Edit: 20.11.2016
*/
private["_cfg", "_veh", "_marker"];

_cfg = configFile >> "RPF_deliveryServerModule";

{
	_veh = createSimpleObject[getText(_x >> "className"), [0,0,0]];
	_veh setPosWorld getArray(_x >> "pos");
	_veh setDir getNumber(_x >> "dir");
	_veh setVariable [configName(_x), true, true];
	true;
}count ("true" configClasses (_cfg >> "physicals"));

{
	_marker = createMarker [configName(_x), getArray(_x >> "pos")];
	_marker setMarkerShape getText(_x >> "shape");
	_marker setMarkerType getText(_x >> "type");
	_marker setMarkerText getText(_x >> "text");
	true;
}count ("true" configClasses (_cfg >> "markers"));
