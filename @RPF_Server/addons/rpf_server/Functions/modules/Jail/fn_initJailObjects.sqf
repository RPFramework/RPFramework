/*
Author: Kerkkoh
First Edit: 5.12.2016
*/
private["_cfg", "_pos", "_veh", "_marker"];

_cfg = configFile >> "RPF_jailServerModule";

{
	_pos = getArray(_x >> "pos");
	_veh = createSimpleObject[getText(_x >> "className"), [0,0,0]];
	_veh setPosWorld _pos;
	_veh setVectorDirAndUp [getArray(_x >> "dir"), getArray(_x >> "up")];
	_veh setPosWorld _pos;
	true;
}count ("true" configClasses (_cfg >> "physicals"));

{
	_marker = createMarker [configName(_x), getArray(_x >> "pos")];
	_marker setMarkerShape getText(_x >> "shape");
	_marker setMarkerType getText(_x >> "type");
	_marker setMarkerText getText(_x >> "text");
	true;
}count ("true" configClasses (_cfg >> "jailMarkers"));
