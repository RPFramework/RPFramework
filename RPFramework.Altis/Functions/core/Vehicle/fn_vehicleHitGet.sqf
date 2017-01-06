/*
Author: Kerkkoh
First Edit: 19.5.2016
*/
params ["_vehicle"];

_return = ((getAllHitPointsDamage _vehicle) select 2);

_return
