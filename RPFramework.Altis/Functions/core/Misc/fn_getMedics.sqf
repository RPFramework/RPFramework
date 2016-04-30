/*
Author: Kerkkoh
First Edit: 30.4.2016
*/

_return = [];
{
	if (_x getVariable ["ems", 0] > 0) then {
		_return pushBack _x;
	};
}forEach allPlayers;

_return