/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
_indx = lbCurSel 1500;
if (_indx == -1) exitWith {hint "Nothing selected. First search for the criminal, then select their name from the box and then click Add prior."};
if ((ctrlText 1402) == "") exitWith {hint "Crime can't be empty."};
_name = lbText [1500, _indx];
_str = lbData [1500, _indx];
_data = call compile _str;

[player, _data select 0, ctrlText 1402] remoteExecCall ["ServerModules_fnc_policePlusDBaddCrime", 2];
