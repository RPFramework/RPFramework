/*
Author: Kerkkoh
First Edit: 20.11.2016
*/
private ["_amount", "_reward", "_delivered"];

closeDialog 0;

_amount = RPF_curDelivery select 1;
_reward = RPF_curDelivery select 2;
_delivered = (RPF_curDelivery select 5) + 1;
RPF_curDelivery set [5, _delivered];

{
	detach _x;
	RPF_ownedFurniture deleteAt (RPF_ownedFurniture find _x);
	deleteVehicle _x;
	true;
} count attachedObjects player;

if (_delivered isEqualTo _amount) then {
	RPF_curDelivery = ["", 0, 0, 0, "", 0];
	["TaskSucceeded",["","Delivery succeeded!"]] call BIS_fnc_showNotification;
	[_reward] call Client_fnc_addCash;
	deleteMarkerLocal "dp";
} else {
	hint format [(localize "STR_RPF_MODULES_DELIVERY_ITEMSDELIVERED"), _delivered, _amount];
};
