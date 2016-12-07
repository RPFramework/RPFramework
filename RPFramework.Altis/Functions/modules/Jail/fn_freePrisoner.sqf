/*
Author: Kerkkoh
First Edit: 6.12.2016
*/
_index = lbCurSel 1500;
if (_index == -1) exitWith {};
_dataS = lbData [1500, _index];
_data = call compile _dataS;

_player = RPF_Prisoners select _data;

[_player] remoteExecCall ["ServerModules_fnc_releaseFromJail", 2];

RPF_Prisoners deleteAt _data;

lbClear 1500;
{
	_item = lbAdd [1500, name _x];
	lbSetData [1500, _item, str _forEachIndex];
}forEach RPF_Prisoners;

lbSetCurSel [1500, 0];
