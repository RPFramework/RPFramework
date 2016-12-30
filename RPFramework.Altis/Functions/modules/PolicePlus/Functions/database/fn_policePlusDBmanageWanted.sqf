/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
params ["_a"];

_indx = lbCurSel 1500;
if (_indx == -1) exitWith {hint "Nothing selected. First search for the criminal, then select their name from the box and then click the button."};
_name = format["%1%2%3", "%", lbText [1500, _indx], "%"];
_str = lbData [1500, _indx];
_data = call compile _str;
if (_a == 0) then {
	if ((ctrlText 1403) == "") exitWith {hint "Description can't be empty."};
	[_data select 0, ctrlText 1403, 0] remoteExecCall ["ServerModules_fnc_policePlusDBmanageWanted", 2];
} else {
	if ((_data select 1) == "") exitWith {hint "Not wanted."};
	[_data select 0, "", 1] remoteExecCall ["ServerModules_fnc_policePlusDBmanageWanted", 2];
};


[player, _name] remoteExecCall ["ServerModules_fnc_policePlusDBrun", 2];
