/*
Author: Kerkkoh
First Edit: 28.11.2015
*/

params ["_text","_format"];

if (isNil {_format}) then {
	hint (_text call BIS_fnc_localize);
} else {
	hint format[(_text call BIS_fnc_localize), _format];
}
