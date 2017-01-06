/*
Author: Kerkkoh
First Edit: 19.5.2016
*/
params ["_res", "_vehicle"];

{
	_vehicle setHitPointDamage [((getAllHitPointsDamage _vehicle) select 0) select _forEachIndex, _x];
}forEach _res;
