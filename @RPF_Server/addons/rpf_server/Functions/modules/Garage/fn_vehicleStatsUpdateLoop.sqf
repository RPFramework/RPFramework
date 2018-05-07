/*

 Author : HoST
 Description: Spawn a loop for saving vehicles' hitpoint damage data

*/
private _cfg = configFile >> "RPF_garageModule";
if (getNumber(_cfg >> "vehicleStatSaveLoop") == 1) then {
	for "_i" from 0 to 1 step 0 do {
		{
			if (!isNil {_x getVariable "key"} && alive _x) then {
				[0, format["updateVehicleStats:%1:%2",((getAllHitPointsDamage _x) select 2), (_x getVariable "key")]] call ExternalS_fnc_ExtDBquery;
			};
			true;
		}count vehicles;

		sleep (getNumber(_cfg >> "vehicleStatsUpdateInterval"));
	};
};
