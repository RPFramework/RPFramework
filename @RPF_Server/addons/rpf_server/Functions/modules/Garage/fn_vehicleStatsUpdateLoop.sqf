/*

 Author : HoST
 Description: Spawn a loop for saving vehicles' hitpoint damage data

*/
if ((getNumber(configFile >> "RPF_garageModule" >> "vehicleStatSaveLoop")) == 1) then {
	for "_i" from 0 to 1 step 0 do {
	  {
		if (!isNil {_x getVariable "key"}) then {
		  _query = [0, format["updateVehicleStats:%1:%2",((getAllHitPointsDamage _x) select 2), (_x getVariable "key")]] call ExternalS_fnc_ExtDBquery;
		};
	  }forEach vehicles;

	  sleep (getNumber(configFile >> "RPF_garageModule" >> "vehicleStatsUpdateInterval"));
	};
};
