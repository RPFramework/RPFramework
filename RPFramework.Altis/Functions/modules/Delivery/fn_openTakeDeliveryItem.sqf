/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

createDialog "takeDeliveryItem";

_amount = RPF_curDelivery select 1;
_left = RPF_curDelivery select 3;

if (_left == 0) then {ctrlShow [1600, false]; hint (localize "STR_RPF_MODULES_DELIVERY_ITEMSTAKEN");};

_str = format [(localize "STR_RPF_MODULES_DELIVERY_ITEMSLEFTHINT"), _left, _amount];
ctrlSetText [1000, _str];