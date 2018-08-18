/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

private ["_left","_deliveryItem"];

closeDialog 0;

_left = (RPF_curDelivery select 3) - 1;
RPF_curDelivery set [3, _left];

_deliveryItem = (RPF_curDelivery select 0) createVehicle position player;

[_deliveryItem] call Client_fnc_pickUp;
RPF_ownedFurniture pushBack _deliveryItem;

hint format [(localize "STR_RPF_MODULES_DELIVERY_ITEMSLEFTHINT"), _left, RPF_curDelivery select 1];
