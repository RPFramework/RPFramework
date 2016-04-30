/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

params ["_seed", "_player"];
_no = nearestObjects [_player, RPF_plantTypes, 2];

if (count _no == 0) then {
	_player removeItem _seed;
	switch (_seed) do {
		case "RPF_Items_PoppySeed": {
			_plantC = "RPF_Plant_Poppy";
			_plant = _plantC createVehicle [0,0,0];
			_plant setPos [(getPos _player) select 0, (getPos _player) select 1, -1.3];
			_plant setVariable ["state", -1.3, true];
			RPF_plantArray pushBack _plant;
		};
		case "RPF_Items_OliveSeed": {
			_plantC = "RPF_Plant_Olive";
			_plant = _plantC createVehicle [0,0,0];
			_plant setPos [(getPos _player) select 0, (getPos _player) select 1, -1.3];
			_plant setVariable ["state", -1.3, true];
			RPF_plantArray pushBack _plant;
		};
	};
} else {
	[["You can't plant a new plant so close to another one!"], "Client_fnc_hintMP", _player, false] spawn BIS_fnc_MP;
};