/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

params ["_plant", "_player"];

if ((_plant getVariable "state") >= 0) then {
	switch (typeOf _plant) do {
		case "RPF_Plant_Poppy": {
			RPF_plantArray deleteAt (RPF_plantArray find _plant);
			deleteVehicle _plant;
			_player addItem "RPF_Items_Poppy";
		};
		case "RPF_Plant_Olive": {
			RPF_plantArray deleteAt (RPF_plantArray find _plant);
			deleteVehicle _plant;
			_player addItem "RPF_Items_Olives";
		};
	};
} else {
	[(localize "STR_RPF_FARMING_NOTFULLYGROWN")] remoteExecCall ["Client_fnc_hintMP", _player];
};