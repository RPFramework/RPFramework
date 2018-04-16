/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

params ["_plant", "_player"];
private ["_model", "_yield", "_configName"];

if (getPosATL _plant # 2 >= 0) then {
	RPF_plantArray deleteAt (RPF_plantArray find _plant);
	
	_model = getModelInfo _plant # 0;
	_yield = "";
	{
		if (_model == ((configFile >> "RPF_farmingServerModule" >> "plants" >> configName(_x) >> "plantModel") call BIS_fnc_getCfgData)) then {
			_yield = ((configFile >> "RPF_farmingServerModule" >> "plants" >> configName(_x) >> "yield") call BIS_fnc_getCfgData);
		};
	}forEach ("true" configClasses (configFile >> "RPF_farmingServerModule" >> "plants"));
	
	if (_yield isEqualTo "") exitWith {diag_log format["RPF Farming: Couldn't find the plant model: %1 from configFile >> RPF_farmingServerModule >> plants >> _seed >> plantModel", _model];};
	
	_amount = 1 + (floor random 2);
	
	if (!(_player canAdd [_yield, _amount])) exitWith {
		["STR_RPF_CORE_CANTADDITEM"] remoteExecCall ["Client_fnc_hintMP", _player];
	};
	
	for "_x" from 1 to _amount step 1 do {
		_player addItem _yield;
	};
	
	deleteVehicle _plant;
} else {
	["STR_RPF_FARMING_NOTFULLYGROWN"] remoteExecCall ["Client_fnc_hintMP", _player];
};