/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

_mC = "RPF_deliveryServerModule";

{
	_classname = (configFile >> _mC >> _x >> "className") call BIS_fnc_getCfgData;
	_pos = (configFile >> _mC >> _x >> "pos") call BIS_fnc_getCfgData;
	_dir = (configFile >> _mC >> _x >> "dir") call BIS_fnc_getCfgData;
	_variable = (configFile >> _mC >> _x >> "variable") call BIS_fnc_getCfgData;
	
	
	_veh = createSimpleObject[_className, [0,0,0]];
	_veh setPosWorld _pos;
	_veh setDir _dir;
	_veh setVariable [_variable, true, true];
	
}forEach ((configFile >> _mC >> "deliveryPhysicals") call BIS_fnc_getCfgData);
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
}forEach ((configFile >> _mC >> "deliveryMarkers") call BIS_fnc_getCfgData);
