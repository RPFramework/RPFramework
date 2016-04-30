/*
Author: Kerkkoh
First Edit: 16.4.2016
Plan:
Check that there is no interaction dialog already open >.>
Create Dialog

Hide all buttons
https://community.bistudio.com/wiki/ctrlShow

foreach action in the RPF_InteractionMenuItems check every condition

if every condition isn't true, move to next action

if every condition is true, show the button and take the button text and set it for the button
and then add the action to an array of all actions which will be used by interactionAction to define on wich action will wich one be called
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
	_countC = (count _cArray) - 1;
	_cTrue = true;
	
	for "_i" from 0 to _countC step 1 do 
	{
		_c = call compile (_cArray select _i);
		if (!_c) then 
		{
			_cTrue = false;
		};
		
	};
	
	if (_cTrue) then 
	{
	
		if (_index1 < 9) then 
		{
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