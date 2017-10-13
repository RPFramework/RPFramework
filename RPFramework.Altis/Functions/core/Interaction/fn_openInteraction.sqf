/*
Author: Kerkkoh
First Edit: 16.4.2016
*/

closeDialog 0;

createDialog "interaction";

// Hide all the buttons at first
{
	ctrlShow [_x, false];
}forEach RPF_InteractionButtons;

// Animate fading in for the dialog
_displ = findDisplay 1014;
[_displ, 1800, ctrlPosition (_displ displayCtrl 1800), 1, 0] call Client_fnc_animateCtrl;
[_displ, 1800, ctrlPosition (_displ displayCtrl 1800), 0, 0.2] call Client_fnc_animateCtrl;
[_displ, 1000, ctrlPosition (_displ displayCtrl 1000), 1, 0] call Client_fnc_animateCtrl;
[_displ, 1000, ctrlPosition (_displ displayCtrl 1000), 0, 0.2] call Client_fnc_animateCtrl;

// Clear the current action array and run through all the items in interaction array to push the relevant ones to the action array
// In this case, we just push everything so we don't check for conditions
RPF_iCurActionArray = [];
{	
	// If (shit fits into the menu) then {put that shit in the menu};
	if (_forEachIndex < (count RPF_InteractionButtons)) then {
		// Use the magic variable to get the free button in question
		_idc = 1600 + _forEachIndex;
		
		ctrlShow [_idc, true];
		ctrlSetText [_idc, format["%1 >", _x select 0]];
		
		_ctrlPos = ctrlPosition (_displ displayCtrl _idc);
		// Animation - just a simple fade from 1 - 0 (from completely faded to 0 faded which is visible)
		[_displ, _idc, _ctrlPos, 1, 0] call Client_fnc_animateCtrl;
		[_displ, _idc, _ctrlPos, 0, 0.2] call Client_fnc_animateCtrl;
		
		RPF_iCurActionArray pushBack (_x select 1);
	};
}forEach RPF_InteractionMenuItems;