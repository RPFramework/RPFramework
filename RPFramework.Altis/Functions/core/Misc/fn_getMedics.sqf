/*
Author: Kerkkoh
First Edit: 30.4.2016
*/

private _return = [];

{
	if (_x getVariable ["ems", 0] > 0) then {
		_return pushBack _x;
	};
	true;
}count allPlayers;

_return
