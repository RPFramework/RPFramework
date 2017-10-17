/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
params ["_a"];

_indx = lbCurSel 1500;
if (_indx == -1) exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_NOTHINGSELECTED")};
_name = format["%1%2%3", "%", lbText [1500, _indx], "%"];
_str = lbData [1500, _indx];
_data = parseSimpleArray _str;
if (_a == 0) then {
	if ((ctrlText 1403) == "") exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_DESCEMPTY")};
	[_data select 0, ctrlText 1403, 0] remoteExecCall ["ServerModules_fnc_policePlusDBmanageWanted", 2];
} else {
	if ((_data select 1) == "") exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_NOTWANTED")};
	[_data select 0, "", 1] remoteExecCall ["ServerModules_fnc_policePlusDBmanageWanted", 2];
};


[player, _name] remoteExecCall ["ServerModules_fnc_policePlusDBrun", 2];
