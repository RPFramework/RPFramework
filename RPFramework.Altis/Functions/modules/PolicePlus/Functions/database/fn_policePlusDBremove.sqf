/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
_indx = lbCurSel 1500;
if (_indx == -1) exitWith {hint "Nothing selected. First search for the criminal, then select their name from the box and then click remove."};
_name = lbText [1500, _indx];
_str = lbData [1500, _indx];
_data = call compile _str;

[_data select 0, "", 1, player] remoteExecCall ["ServerModules_fnc_policePlusDBmanage", 2];

lbClear 1500;
ctrlSetText[1400, "Name"];
ctrlSetText[1002, ""];
ctrlSetText[1000, ""];
ctrlSetText[1004, ""];
ctrlSetText[1006, ""];
