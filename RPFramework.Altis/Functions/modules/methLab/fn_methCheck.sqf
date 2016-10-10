/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

lbSetCurSel [1501, 0];
_currentitemindex = lbCurSel 1501;
if (_currentitemindex == -1) exitWith {ctrlSetText [1000, "STATUS: Not enough ingredients!"];};

[RPF_methLabItems, player] remoteExecCall ["ServerModules_fnc_methLabCheck", 2];
