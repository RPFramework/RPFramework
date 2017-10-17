/*
Author: Kerkkoh
First Edit: 27.9.2016
*/

_indx = lbCurSel 1500;
if (_indx == -1) exitWith {};
_name = lbText [1500, _indx];
_str = lbData [1500, _indx];
_data = parseSimpleArray _str;

ctrlSetText [1000, _name];
if ((_data select 1) != "no") then {
	ctrlSetText [1002, _data select 1];
	((findDisplay 1085) displayCtrl 1002) ctrlSetTextColor [1, 0, 0, 1];
} else {
	ctrlSetText [1002, (localize "STR_RPF_MODULES_POLICEPLUS_NO")];
	((findDisplay 1085) displayCtrl 1002) ctrlSetTextColor [1, 1, 1, 1];
};

ctrlSetText [1004, ""];
ctrlSetText [1006, ""];

[player, _data select 0] remoteExecCall ["ServerModules_fnc_policePlusDBfetchCrimes", 2];