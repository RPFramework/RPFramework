/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

params ["_seed", "_player"];
private ["_pos", "_plant"];

// Random "safe" position near player
_pos = [_player, 1, 15, 4, 0, 20] call BIS_fnc_findSafePos;

// Check if the position is on a road / forbidden type of surface and exit
if (isOnRoad _pos || !((surfaceType _pos) in ((configFile >> "RPF_farmingServerModule" >> "farmGroundTypes") call BIS_fnc_getCfgData))) exitWith {
	_player addItem _seed;
	["STR_RPF_MODULES_FARMING_CANTPLANT"] remoteExecCall ["Client_fnc_hintMP", _player];
};

// Create the simple object to the position, set its height & random dir & push it back to the array for the loop
_plant = createSimpleObject[((configFile >> "RPF_farmingServerModule" >> "plants" >> _seed >> "modelPath") call BIS_fnc_getCfgData)+"\"+((configFile >> "RPF_farmingServerModule" >> "plants" >> _seed >> "plantModel") call BIS_fnc_getCfgData), [0,0,0]];
_plant setPosATL [_pos # 0, _pos # 1, (configFile >> "RPF_farmingServerModule" >> "plants" >> _seed >> "initialDepth") call BIS_fnc_getCfgData];
_plant setDir random 360;
RPF_plantArray pushBack _plant;
