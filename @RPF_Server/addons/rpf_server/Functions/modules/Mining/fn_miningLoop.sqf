/*
Author: Kerkkoh
First Edit: 2.2.2017
*/
for "_i" from 0 to 1 step 0 do 
{
	sleep ((configFile >> "RPF_miningServerModule" >> "rockRespawningSpeed") call BIS_fnc_getCfgData);
	{
		if (count (nearestObjects [_x, ((configFile >> "RPF_miningServerModule" >> "rocks") call BIS_fnc_getCfgData), 2]) == 0) then {
			_veh = (selectRandom ((configFile >> "RPF_miningServerModule" >> "rocks") call BIS_fnc_getCfgData)) createVehicle [0,0,0];
			_veh setPos _x;
			_veh setDir random 360;
		};
	}forEach RPF_MiningRockPositions;
};