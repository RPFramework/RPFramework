/*
Author: Kerkkoh
First Edit: 19.5.2016
*/
params ["_res", "_vehicle"];

{
	_vehicle setHitPointDamage [_x, ((_res select 1) select _forEachIndex)];
}forEach (_res select 0);
