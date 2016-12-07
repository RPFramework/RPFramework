/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

closeDialog 0;

_class = RPF_curDelivery select 0;
_amount = RPF_curDelivery select 1;
_left = RPF_curDelivery select 3;
_left = _left - 1;
RPF_curDelivery set [3, _left];

_deliveryItem = _class createVehicle position player;

[_deliveryItem] call Client_fnc_pickUp;
RPF_ownedFurniture pushBack _deliveryItem;

_str = format ["Items left: %1/%2)", _left, _amount];
hint _str;