/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
_indx = lbCurSel 1500;
if (_indx == -1) exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_NOTHINGSELECTED")};
_name = lbText [1500, _indx];
_str = lbData [1500, _indx];
_data = parseSimpleArray _str;

[_data select 0, "", 1, player] remoteExecCall ["ServerModules_fnc_policePlusDBmanage", 2];

lbClear 1500;
ctrlSetText[1400, (localize "STR_RPF_MODULES_POLICEPLUS_NAME")];
ctrlSetText[1002, ""];
ctrlSetText[1000, ""];
ctrlSetText[1004, ""];
ctrlSetText[1006, ""];
