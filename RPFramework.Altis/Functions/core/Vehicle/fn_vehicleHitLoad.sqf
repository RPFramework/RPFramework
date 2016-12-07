/*
Author: Kerkkoh
First Edit: 19.5.2016
["HitLFWheel","HitLF2Wheel","HitRFWheel","HitRF2Wheel","HitFuel","HitEngine","HitGlass1","HitGlass2","HitGlass3","HitGlass4","HitGlass5","HitGlass6","HitRGlass","HitLGlass","HitBody","HitLBWheel","HitLMWheel","HitRBWheel","HitRMWheel","",""]
*/
params ["_res", "_vehicle"];
_parts = _res select 0;
_hits = _res select 1;

_index = 0;
{
	_hit = _hits select _index;
	_vehicle setHitPointDamage [_x, _hit];
	_index = _index + 1;
}forEach _parts;
