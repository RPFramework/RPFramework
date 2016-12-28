/*
Author: Kerkkoh
First Edit: 19.5.2016
*/
params ["_vehicle"];

_getHitPoints = getAllHitPointsDamage _vehicle;

_return = [_getHitPoints select 0, _getHitPoints select 2];

_return
