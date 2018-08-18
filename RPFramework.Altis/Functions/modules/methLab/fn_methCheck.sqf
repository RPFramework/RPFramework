/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

lbSetCurSel [1501, 0];
if ((lbCurSel 1501) isEqualTo -1) exitWith {ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_NEI")];};

if (RPF_curLab getVariable ["labActive", false]) exitWith {};

RPF_curLab setVariable ["labActive", true, true];

// Items are removed on the server

[RPF_labItems, player] remoteExecCall ["ServerModules_fnc_methLabCheck", 2];

// Clear items and dialogs

RPF_labItems = [];
RPF_labPlayerItems = [];
lbClear 1500;
lbClear 1501;
