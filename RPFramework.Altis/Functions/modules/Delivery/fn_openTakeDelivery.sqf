/*
Author: Kerkkoh
First Edit: 20.11.2016
*/
private["_arr", "_class", "_price", "_amount", "_reward"];

createDialog "takeDelivery";

_arr = selectRandom ("true" configClasses (missionConfigFile >> "RPF_deliveryModule" >> "deliveryItems"));
_class = configName(_arr);
_price = getNumber(_arr >> "price");
_amount = (floor random 10) + 1;

_reward = (_price - (floor random [0,20,31])) * _amount;

ctrlSetText [1001, format ["%1 (%2)", [_class]call Client_fnc_getVehicleName, _amount]];
ctrlSetText [1003, str _reward];

RPF_curDelivery = [_class, _amount, _reward, _amount, "", 0];
