/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
for "_i" from 0 to 1 step 0 do 
{
	sleep 60;
	{
		_state = _x getVariable "state";
		if (_state < 0) then 
		{
			_random = floor random 2;
			if (_random == 1) then {
				_newState = _state + 0.2;
				_plantPos = getPos _x;
				
				_x setVariable ["state", _newState];
				_x setPos [_plantPos select 0, _plantPos select 1, _newState];
			};
		};
	}forEach RPF_plantArray;
};