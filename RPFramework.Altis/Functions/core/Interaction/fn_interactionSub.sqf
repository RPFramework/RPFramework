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
private ["_interactionButtons", "_actions", "_idx", "_cTrue", "_idc"];

closeDialog 0;

createDialog "interaction";

_interactionButtons = [1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608];

// Hide all the buttons again
{
	ctrlShow [_x, false];
	true;
}count _interactionButtons;

ctrlSetText [1000, _name call BIS_fnc_localize];

//Find the subinteractions
_actions = [];
{
	if (((_x select 0) call BIS_fnc_localize) isEqualTo (_name call BIS_fnc_localize)) then {
		_actions = (_x select 1);
	};
	true;
}count (call RPF_InteractionSubItems);

_idx = 0;
{
	_cTrue = true;
	// Check if all conditions are true within the condition array which is the first array within an interaction array
	{
		if (!(call compile _x)) then {
			_cTrue = false;
		};
		true;
	}count (_x select 0);

	if (_cTrue) then {
		if (_idx < (count _interactionButtons)) then {
			_idc = 1600 + _idx;
			_idx = _idx + 1;

			ctrlShow [_idc, true];
			ctrlSetText [_idc, ((_x select 1) select 0) call BIS_fnc_localize];
			buttonSetAction [_idc, "closeDialog 0;"+((_x select 1) select 1)];
		};
	};
	true;
}count _actions;
