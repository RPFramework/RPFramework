/*
Author: Kerkkoh
First Edit: 24.4.2016
*/
_vehicles = [["C_SUV_01_F", [16741.5,12505.9,0.0241032], 10000], ["C_Offroad_01_F", [16735.7,12501.3,-0.00195217], 10000], ["C_Van_01_box_F", [16730,12497,0.0254688], 15000]];
for "_i" from 0 to 1 step 0 do 
{
	sleep 300;
	{
		_class = _x select 0;
		_positioni = _x select 1;
		_price = _x select 2;
		_nearest = nearestObjects [_positioni, ["Car"], 3];
		if (count _nearest == 0) then {
			_veh = _class createVehicle _positioni;
			_veh setDir 322.976;
			_veh setVariable ["buyableThing", [_class, _price, 0], true];
			_veh lock true;
		};
	}forEach _vehicles;
};