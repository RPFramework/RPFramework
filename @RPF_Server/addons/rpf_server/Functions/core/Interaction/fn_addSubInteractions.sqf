/*
 * @Author: Kerkkoh
 *
 * @Description: Adds an array of interaction items into a category
 *
 * @Arguments:
 * 0 - _name - STRING - The name of the subinteraction menu being opened
 *
 * @Return: -/-
 */
params ["_category", "_array"];
private["_pos"];

_pos = -1;
{
	if (((_x select 0) call BIS_fnc_localize) isEqualTo (_category call BIS_fnc_localize)) exitWith {
		_pos = _forEachIndex;
	};
}forEach RPF_InteractionSubItems;
if (_pos isEqualTo -1) exitWith {diag_log format["ERROR, POSITION -1, CATEGORY NAME WAS %1 AND CLEARLY IT DIDN'T WORK", _category]};
{
	((RPF_InteractionSubItems select _pos) select 1) pushBack _x;
}forEach _array;
