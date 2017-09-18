/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
_indx = lbCurSel 1500;
if (_indx == -1) exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_NOTHINGSELECTED")};
if ((ctrlText 1402) == "") exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_CRIMEEMPTY")};
_name = lbText [1500, _indx];
_str = lbData [1500, _indx];
_data = parseSimpleArray _str;

[player, _data select 0, ctrlText 1402] remoteExecCall ["ServerModules_fnc_policePlusDBaddCrime", 2];
