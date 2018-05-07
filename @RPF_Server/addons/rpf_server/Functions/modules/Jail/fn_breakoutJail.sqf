/*
Author: Kerkkoh
First Edit: 5.12.2016
*/

{
	private _y = _x;
	{
		_x setVariable ["jailed", false, true];
		_x setPos getArray(configFile >> "RPF_jailServerModule" >> "jailReleaseLocation");
		true;
	}count (_y select 0);
	_y set [0, []];
	_y set [2, true];
	true;
}count RPF_JailCells;
