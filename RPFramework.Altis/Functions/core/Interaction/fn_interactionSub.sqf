/*
 * @Author: Kerkkoh
 * 
 * @Description: Opens subinteraction menu and its actions
 * 
 * @Arguments:
 * 0 - _name - STRING - The name of the subinteraction menu being opened
 *
 * @Return: -/-
 */
params ["_name"];

closeDialog 0;

createDialog "interaction";

// Hide all the buttons again
{
	ctrlShow [_x, false];
}forEach RPF_InteractionButtons;

// Animate fading in for the dialog (the first call hides it, second fades it in)
_displ = findDisplay 1014;
ctrlSetText [1000, _name call BIS_fnc_localize];
[_displ, 1800, ctrlPosition (_displ displayCtrl 1800), 1, 0] call Client_fnc_animateCtrl;
[_displ, 1800, ctrlPosition (_displ displayCtrl 1800), 0, 0.2] call Client_fnc_animateCtrl;
[_displ, 1000, ctrlPosition (_displ displayCtrl 1000), 1, 0] call Client_fnc_animateCtrl;
[_displ, 1000, ctrlPosition (_displ displayCtrl 1000), 0, 0.2] call Client_fnc_animateCtrl;

// Clear the current action array and run through all the items in interaction array to push the relevant ones to the action array
RPF_iCurActionArray = [];

//Find the subinteractions
_actions = [];
{
	_z = _x;
	if ((_x select 0) isEqualTo (_name call BIS_fnc_localize)) exitWith {
		_actions = (_x select 1);
	};
}forEach RPF_InteractionSubItems;

_idx = 0;
{
	_cArray = _x select 0;
	_cTrue = true;
	// Check if all conditions are true within the condition array which is the first array within an interaction array
	{
		if (!(call compile _x)) then {
			_cTrue = false;
		};
	}forEach _cArray;
	
	if (_cTrue) then {
		if (_idx < (count RPF_InteractionButtons)) then {
			_idc = 1600 + _idx;
			_idx = _idx + 1;
			
			ctrlShow [_idc, true];
			ctrlSetText [_idc, ((_x select 1) select 0)];
			
			RPF_iCurActionArray pushBack ((_x select 1) select 1);
		};
	};
}forEach _actions;
