/*

 Author : HoST
 Description: Spawn a loop for saving vehicles' hitpoint damage data

*/

for "_i" from 0 to 1 step 0 do {
  {
    if (!isNil {_x getVariable "key"}) then {
      _hit = [_x] call Client_fnc_vehicleHitGet;
      _query = [0, format["updateVehicleStats:%1:%2",_hit, (_x getVariable "key")]] call ExternalS_fnc_ExtDBquery;
    };
  }forEach vehicles;

  sleep (getNumber(configFile >> "RPF_garageModule" >> "vehicleStatsUpdateInterval"));
};
