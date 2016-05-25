/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

params ["_plant", "_player"];

_state = _plant getVariable "state";

if (_state >= 0) then {
	switch (typeOf _plant) do {
		case "RPF_Plant_Poppy": {
			_item = "RPF_Items_Poppy";
			_pia = RPF_plantArray find _plant;
			
			RPF_plantArray deleteAt _pia;
			deleteVehicle _plant;
			_player addItem _item;
		};
		case "RPF_Plant_Olive": {
			_item = "RPF_Items_Olives";
			_pia = RPF_plantArray find _plant;
			
			RPF_plantArray deleteAt _pia;
			deleteVehicle _plant;
			_player addItem _item;
		};
	};
} else {
	["This plant is not fully grown yet!"] remoteExecCall ["Client_fnc_hintMP", _player];
};