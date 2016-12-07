/*
Author: Kerkkoh
First Edit: 5.12.2016
*/

{
	_y = _x;
	{
		_x setVariable ["jailed", false, true];
		_x setPos RPF_JailReleaseLocation;
	}forEach (_y select 0);
	(_y select 0) set [0, []];
}forEach RPF_JailCells;
