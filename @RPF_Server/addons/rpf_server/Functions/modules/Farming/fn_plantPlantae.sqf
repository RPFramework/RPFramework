/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

params ["_seed", "_player"];

if (count (nearestObjects [_player, ((configFile >> "RPF_farmingServerModule" >> "plantTypes") call BIS_fnc_getCfgData), 2]) == 0) then {
	switch (_seed) do {
		case "RPF_Items_PoppySeed": {
			_plant = createVehicle ["RPF_Plant_Poppy", [(getPos _player) select 0, (getPos _player) select 1, -1.3], [], 0, "NONE"];
			_plant allowDamage false;
			_plant setVariable ["state", -1.3, false];
			RPF_plantArray pushBack _plant;
		};
		case "RPF_Items_OliveSeed": {
			_plant = createVehicle ["RPF_Plant_Olive", [(getPos _player) select 0, (getPos _player) select 1, -1.6], [], 0, "NONE"];
			_plant allowDamage false;
			_plant setVariable ["state", -1.6, false];
			RPF_plantArray pushBack _plant;
		};
	};
} else {
	["STR_RPF_FARMING_TOOCLOSE"] remoteExecCall ["Client_fnc_hintMP", _player];
	_player addItem _seed;
};