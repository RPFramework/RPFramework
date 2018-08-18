/*
Author: Kerkkoh
First Edit: 27.9.2016
*/

private _indx = lbCurSel 1500;
if (_indx isEqualTo -1) exitWith {hint (localize "STR_RPF_MODULES_POLICEPLUS_NOTHINGSELECTED")};

[(parseSimpleArray lbData [1500, _indx]) select 0, "", 1, player] remoteExecCall ["ServerModules_fnc_policePlusDBmanage", 2];

lbClear 1500;
ctrlSetText[1400, (localize "STR_RPF_MODULES_POLICEPLUS_NAME")];
ctrlSetText[1002, ""];
ctrlSetText[1000, ""];
ctrlSetText[1004, ""];
ctrlSetText[1006, ""];
