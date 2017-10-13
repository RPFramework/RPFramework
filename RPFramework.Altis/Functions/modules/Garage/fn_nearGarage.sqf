/*
Author: Kerkkoh
First Edit: 6.1.2017
*/
_nearest = nearestObjects [player, [], 10];

_return = false;
{
	if (!(isNil {_x getVariable 'garage'})) then {
		_return = ((player distance _x) <= 10);
	};
}forEach _nearest;

_return;