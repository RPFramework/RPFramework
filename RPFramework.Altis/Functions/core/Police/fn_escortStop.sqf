/*
Author: Kerkkoh
First Edit: 28.11.2015
*/

{
	detach _x;
	if (!(_x isKindOf "Man") && !(isNil "RPF_curAttachedMass")) then {
		if (RPF_curAttachedMass > 0) then {
			_x setMass RPF_curAttachedMass;
		};
		RPF_curAttachedMass = nil;
	};
	true;
} count attachedObjects player;
