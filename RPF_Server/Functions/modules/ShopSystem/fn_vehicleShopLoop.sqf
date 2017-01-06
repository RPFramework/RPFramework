/*
Author: Kerkkoh
First Edit: 24.4.2016

Array format
["classname", position, direction, price]

If you place vehicles in the mission for the stores there is a code you can add for it to be added into the vehicle shop array so that it will be respawned when bought.
init:
if (isServer) then {
	RPF_vehicleShopVehicles pushBack [typeOf this, getPos this, getDir this, PRICEHERE];
};

*/
RPF_vehicleShopVehicles = [["C_SUV_01_F", [16741.5,12505.9,0.0241032], 322.976, 10000], ["C_Offroad_01_F", [16735.7,12501.3,-0.00195217], 322.976, 10000], ["C_Van_01_box_F", [16730,12497,0.0254688], 322.976, 15000]];
for "_i" from 0 to 1 step 0 do 
{
	{
		_class = _x select 0;
		_positioni = _x select 1;
		_dir = _x select 2;
		_price = _x select 3;
		_nearest = nearestObjects [_positioni, ["Car"], 3];
		if (count _nearest == 0) then {
			_veh = _class createVehicle _positioni;
			_veh setDir _dir;
			_veh setVariable ["buyableThing", [_class, _price, 0], true];
			_veh lock true;
			_veh allowDamage false;
		};
	}forEach RPF_vehicleShopVehicles;
	sleep 300;
};