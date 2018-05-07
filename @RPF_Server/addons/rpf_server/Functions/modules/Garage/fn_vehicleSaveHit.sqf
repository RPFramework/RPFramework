/*
	Author : Kerkkoh
	Description: Saves vehicle's damage

    Arguments:
        1 - Object - Vehicle in question
        2 - Boolean - Delete vehicle after update (Used for storing vehicles in the garage)
*/
params["_vehicle", "_deleteVehicle"];

[0, format["updateVehicleStats:%1:%2",((getAllHitPointsDamage _vehicle) select 2), (_vehicle getVariable "key")]] call ExternalS_fnc_ExtDBquery;

if (_deleteVehicle) then {
	deleteVehicle _vehicle;
};
