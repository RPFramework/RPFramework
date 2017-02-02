/*
Author: Kerkkoh
First Edit: 2.2.2017
*/
for "_i" from 0 to 1 step 0 do 
{
	sleep 60;
	{
		if (count (nearestObjects [_x, RPF_Rocks, 2]) == 0) then {
			_veh = (selectRandom RPF_Rocks) createVehicle [0,0,0];
			_veh setPos _x;
			_veh setDir random 360;
		};
	}forEach RPF_MiningRockPositions;
};