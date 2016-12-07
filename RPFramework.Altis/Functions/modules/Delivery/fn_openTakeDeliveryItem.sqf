/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

createDialog "takeDeliveryItem";

_amount = RPF_curDelivery select 1;
_left = RPF_curDelivery select 3;

if (_left == 0) then {ctrlShow [1600, false]; hint "You have taken all items, go deliver them to the marked location!";};

_str = format ["Items left: %1/%2)", _left, _amount];
ctrlSetText [1000, _str];