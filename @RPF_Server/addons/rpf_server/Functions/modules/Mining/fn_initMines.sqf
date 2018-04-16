/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

RPF_MiningRockPositions = [];
_mC = "RPF_miningServerModule";

{
	_marker = createMarker [(configFile >> _mC >> _x >> "name") call BIS_fnc_getCfgData, (configFile >> _mC >> _x >> "pos") call BIS_fnc_getCfgData];
	_marker setMarkerShape ((configFile >> _mC >> _x >> "shape") call BIS_fnc_getCfgData);
	_marker setMarkerType ((configFile >> _mC >> _x >> "type") call BIS_fnc_getCfgData);
	_marker setMarkerText ((configFile >> _mC >> _x >> "text") call BIS_fnc_getCfgData);
}forEach ((configFile >> _mC >> "miningMarkers") call BIS_fnc_getCfgData);

{
	for "_i" from 1 to 15 step 1 do {
		_pos = [(_x select 0) + ((random 40)-20), (_x select 1) + ((random 40)-20), (_x select 2)];
		_rock = createSimpleObject ["a3\rocks_f\sharp\"+(selectRandom ((configFile >> _mC >> "rocks") call BIS_fnc_getCfgData)), [0,0,0]]; 
		_rock setPosWorld _pos;
		_rock setDir random 360;
		RPF_MiningRockPositions pushBack _pos;
	};
}forEach ((configFile >> _mC >> "minePositions") call BIS_fnc_getCfgData);

[]spawn ServerModules_fnc_miningLoop;

{
	_className = (configFile >> _mC >> _x >> "className") call BIS_fnc_getCfgData;
	_pos = (configFile >> _mC >> _x >> "pos") call BIS_fnc_getCfgData;
	_dir = (configFile >> _mC >> _x >> "dir") call BIS_fnc_getCfgData;
	_shopName = (configFile >> _mC >> _x >> "shopName") call BIS_fnc_getCfgData;
	_buyItems = (configFile >> _mC >> _x >> "buyItems") call BIS_fnc_getCfgData;
	_sellItems = (configFile >> _mC >> _x >> "sellItems") call BIS_fnc_getCfgData;
	_isProcessing = (configFile >> _mC >> _x >> "isProcessing") call BIS_fnc_getCfgData;
	
	_store = createSimpleObject[_className, [0,0,0]];
	_store setPosWorld _pos;
	_store setDir _dir;
	_store allowDamage false;
	if (_isProcessing == 1) then {
		_store setVariable ["mp", true, true];
	} else {
		_store setVariable ["shopSystemShop", [_shopName,_buyItems,_sellItems], true];
	};
}forEach ((configFile >> _mC >> "miningShops") call BIS_fnc_getCfgData);
