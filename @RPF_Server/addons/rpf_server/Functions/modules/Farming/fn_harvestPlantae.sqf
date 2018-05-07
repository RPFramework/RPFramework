/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

params ["_plant", "_player"];
private ["_cfg", "_model", "_yield", "_amount"];

if (getPosATL _plant select 2 >= 0) then {
	RPF_plantArray deleteAt (RPF_plantArray find _plant);

	_cfg = configFile >> "RPF_farmingServerModule" >> "plants";

	_model = getModelInfo _plant select 0;
	_yield = "";
	{
		private _innerCfg = _cfg >> configName(_x);
		if (_model isEqualTo ((_innerCfg >> "plantModel") call BIS_fnc_getCfgData)) exitWith {
			_yield = (_innerCfg >> "yield") call BIS_fnc_getCfgData;
		};
		true;
	}count ("true" configClasses _cfg);

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
