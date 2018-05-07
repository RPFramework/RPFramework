/*
Author: Kerkkoh
First Edit: 2.2.2017
*/
private["_cfg", "_marker", "_pos", "_rock", "_veh"];

RPF_MiningRockPositions = [];

_cfg = configFile >> "RPF_miningServerModule";

//init markers
{
	_marker = createMarker [configName(_x), getArray(_x >> "pos")];
	_marker setMarkerShape getText(_x >> "shape");
	_marker setMarkerType getText(_x >> "type");
	_marker setMarkerText getText(_x >> "text");
	true;
}count ("true" configClasses (_cfg >> "markers"));

//init rocks
{
	for "_i" from 1 to 15 step 1 do {
		_pos = [(_x select 0) + ((random 40)-20), (_x select 1) + ((random 40)-20), (_x select 2)];
		_rock = createSimpleObject [selectRandom getArray(_cfg >> "rocks"), [0,0,0]];
		_rock setPosWorld _pos;
		_rock setDir random 360;
		RPF_MiningRockPositions pushBack _pos;
	};
	true;
}count getArray(_cfg >> "minePositions");

//init loop that respawns the rocks once they are spawned
[]spawn ServerModules_fnc_miningLoop;

//init shops
{
	_veh = createSimpleObject[getText(_x >> "className"), [0,0,0]];
	_veh setPosWorld getArray(_x >> "pos");
	_veh setDir getNumber(_x >> "dir");
	_veh allowDamage false;
	if (getNumber(_x >> "isProcessing") isEqualTo 1) then {
		_veh setVariable ["mp", true, true];
	} else {
		_veh setVariable ["shopSystemShop", [getText(_x >> "shopName"), getArray(_x >> "buyItems"), getArray(_x >> "sellItems")], true];
	};
	true;
}count ("true" configClasses (_cfg >> "shops"));
