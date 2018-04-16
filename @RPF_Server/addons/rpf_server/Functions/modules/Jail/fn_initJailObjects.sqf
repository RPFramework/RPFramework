/*
Author: Kerkkoh
First Edit: 5.12.2016
*/

_mc = "RPF_jailServerModule";

{
	_classname = (configFile >> _mC >> _x >> "className") call BIS_fnc_getCfgData;
	_pos = (configFile >> _mC >> _x >> "pos") call BIS_fnc_getCfgData;
	_dir = (configFile >> _mC >> _x >> "dir") call BIS_fnc_getCfgData;
	_up = (configFile >> _mC >> _x >> "up") call BIS_fnc_getCfgData;

	_obj = createSimpleObject[_className, [0,0,0]];
	_obj setPosWorld _pos;
	_obj setVectorDirAndUp [_dir, _up];
	_obj setPosWorld _pos;
}forEach ((configFile >> _mC >> "jailPhysicals") call BIS_fnc_getCfgData);
{
	_name = (configFile >> _mC >> _x >> "name") call BIS_fnc_getCfgData;
	_pos = (configFile >> _mC >> _x >> "pos") call BIS_fnc_getCfgData;
	_shape = (configFile >> _mC >> _x >> "shape") call BIS_fnc_getCfgData;
	_type = (configFile >> _mC >> _x >> "type") call BIS_fnc_getCfgData;
	_text = (configFile >> _mC >> _x >> "text") call BIS_fnc_getCfgData;
	
	_marker = createMarker [_name, _pos];
	_marker setMarkerShape _shape;
	_marker setMarkerType _type;
	_marker setMarkerText _text;
}forEach ((configFile >> _mC >> "jailMarkers") call BIS_fnc_getCfgData);
