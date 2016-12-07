/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

closeDialog 0;

_class = RPF_curDelivery select 0;
_amount = RPF_curDelivery select 1;
_reward = RPF_curDelivery select 2;
_delivered = RPF_curDelivery select 5;
_delivered = _delivered + 1;
RPF_curDelivery set [5, _delivered];

{
	detach _x;
	_class = typeOf _x;
	
	_pia = RPF_ownedFurniture find _x;
	_rem = RPF_ownedFurniture deleteAt _pia;
	
	deleteVehicle _x;
} forEach attachedObjects player;

if (_delivered == _amount) then {
	RPF_curDelivery = ["", 0, 0, 0, "", 0];
	["TaskSucceeded",["","Delivery succeeded!"]] call BIS_fnc_showNotification;
	[_reward] call Client_fnc_addCash;
	deleteMarkerLocal "dp";
} else {
	_str = format ["Items delivered: %1/%2)", _delivered, _amount];
	hint _str;
};