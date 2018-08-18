/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

createDialog "deliverDelivery";

private ["_amount", "_reward", "_delivered"];

_amount = RPF_curDelivery select 1;
_reward = RPF_curDelivery select 2;
_delivered = RPF_curDelivery select 5;

ctrlSetText [1001, format ["%1/%2", _delivered, _amount]];
ctrlSetText [1003, str _reward];
