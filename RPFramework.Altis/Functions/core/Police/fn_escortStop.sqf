/*
Author: Kerkkoh
First Edit: 28.11.2015
*/

{
	detach _x;
	if (!(_x isKindOf 'Man') && !(isNil {RPF_curAttachedMass})) then {
		_x setMass RPF_curAttachedMass;
		RPF_curAttachedMass = nil;
	};
} forEach attachedObjects player;