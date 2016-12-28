/*
Author: Kerkkoh
First Edit: 16.4.2016
*/

if (!isNull findDisplay 1014) exitWith {};

createDialog "interaction";

{
	ctrlShow [_x, false];
}forEach RPF_InteractionButtons;

_index1 = 0;
RPF_iCurActionArray = [];

{
	_cArray = _x select 0;
	_cTrue = true;
	
	for "_i" from 0 to ((count _cArray) - 1) step 1 do {
		_c = call compile (_cArray select _i);
		if (!_c) then {
			_cTrue = false;
		};
	};
	
	if (_cTrue) then {
		if (_index1 < 9) then {
			_idc = 1600 + _index1;
			_index1 = _index1 + 1;
			_text = (_x select 1) select 0;
			_action = (_x select 1) select 1;
			
			ctrlShow [_idc, true];
			ctrlSetText [_idc, _text];
			
			RPF_iCurActionArray pushBack _action;
		};
	};
}forEach RPF_InteractionMenuItems;