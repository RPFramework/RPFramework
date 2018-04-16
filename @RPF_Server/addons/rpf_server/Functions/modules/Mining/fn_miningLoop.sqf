/*
Author: Kerkkoh
First Edit: 2.2.2017
*/
for "_i" from 0 to 1 step 0 do {
	uiSleep ((configFile >> "RPF_miningServerModule" >> "rockRespawningSpeed") call BIS_fnc_getCfgData);
	{
		_rocksNearby = false;
		{
			if (((getModelInfo _x) select 0) in ((configFile >> "RPF_miningServerModule" >> "rocks") call BIS_fnc_getCfgData)) exitWith {
				_rocksNearby = true;
			};
		}forEach (nearestObjects [_x, [], 2, true]);
		if (!_rocksNearby) then {
			_rock = createSimpleObject ["a3\rocks_f\sharp\"+(selectRandom ((configFile >> "RPF_miningServerModule" >> "rocks") call BIS_fnc_getCfgData)), [0,0,0]]; 
			_rock setPosWorld _x;
			_rock setDir random 360;
		};
	}forEach RPF_MiningRockPositions;
};