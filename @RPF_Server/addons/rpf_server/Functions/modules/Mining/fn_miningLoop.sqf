/*
Author: Kerkkoh
First Edit: 2.2.2017
*/
for "_i" from 0 to 1 step 0 do {
	private _cfg = configFile >> "RPF_miningServerModule";
	uiSleep getNumber(_cfg >> "rockRespawningSpeed");
	{
		// So yeah, this monster here counts how many rocks are within 2m of our rock position (_x) and then checks if that count is 0
		if (({((getModelInfo _x) select 0) in getArray(missionConfigFile >> "RPF_miningModule" >> "rocks")} count (nearestObjects [_x, [], 2, true])) isEqualTo 0) then {
			private _rock = createSimpleObject [selectRandom getArray(_cfg >> "rocks"), [0,0,0]];
			_rock setPosWorld _x;
			_rock setDir random 360;
		};
		true;
	}count RPF_MiningRockPositions;
};
