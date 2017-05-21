/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

lbSetCurSel [1501, 0];
_currentitemindex = lbCurSel 1501;
if (_currentitemindex == -1) exitWith {ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_NEI")];};

{
	_class = _x select 0;
	_amount = _x select 1;
	if (_amount != 0) then {
		for "_i" from 1 to _amount step 1 do {
			player removeItem _class;
		};
	};
}forEach RPF_methLabItems;

[RPF_methLabItems, player] remoteExecCall ["ServerModules_fnc_methLabCheck", 2];

RPF_methLabItems = [
    ["RPF_Items_ButaneCanister", 0],
    ["RPF_Items_Matches", 0],
    ["RPF_Items_Painkillers", 0],
	["RPF_Items_Battery", 0],
	["RPF_Items_Vitamins", 0],
    ["RPF_Items_GasCanister", 0],
	["RPF_Items_CleanerSpray", 0]
];
RPF_methLabPlayerItems = [
    ["RPF_Items_ButaneCanister", 0],
    ["RPF_Items_Matches", 0],
    ["RPF_Items_Painkillers", 0],
	["RPF_Items_Battery", 0],
	["RPF_Items_Vitamins", 0],
    ["RPF_Items_GasCanister", 0],
	["RPF_Items_CleanerSpray", 0]
];
lbClear 1500;
lbClear 1501;
