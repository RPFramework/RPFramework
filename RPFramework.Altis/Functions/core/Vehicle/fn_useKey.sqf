/*
Author: Kerkkoh
First Edit: 24.11.2015
*/
params ["_veh"];
if (_veh in RPF_Cars) then {
	_locked = locked _veh;
	if(_locked == 2 || _locked == 3) then 
		{
			[[player, "unlockCar"], "Client_fnc_playSound", true, false] spawn BIS_fnc_MP;
			_veh lock 0;
		} 
			else 
		{
			[[player, "unlockCar"], "Client_fnc_playSound", true, false] spawn BIS_fnc_MP;
			_veh lock 2;
		};
} else {
	hint "Your key can't open this vehicle.";
};