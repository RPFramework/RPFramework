/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
private _indx = lbCurSel 1500;
if (_indx isEqualTo -1) exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_NOTHINGSELECTED")};
if ((ctrlText 1402) isEqualTo "") exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_CRIMEEMPTY")};

[player, (parseSimpleArray (lbData [1500, _indx])) select 0, ctrlText 1402] remoteExecCall ["ServerModules_fnc_policePlusDBaddCrime", 2];
