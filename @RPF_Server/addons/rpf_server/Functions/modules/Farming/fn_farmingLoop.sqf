/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
for "_i" from 0 to 1 step 0 do
{
	sleep ((configFile >> "RPF_farmingServerModule" >> "farmingSpeed") call BIS_fnc_getCfgData);
	{
		private ["_plantPos", "_state", "_newState"];
		_plantPos = getPosATL _x;
		_state = _plantPos # 2;
		if (_state < 0) then {
			_newState = _state + selectRandom [0.1,0.2];
			_x setPosATL [_plantPos # 0, _plantPos # 1, _newState];
		};
		true;
	}count RPF_plantArray;
};
