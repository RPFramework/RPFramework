/*
Author: Kerkkoh
First Edit: 6.12.2016
*/
_index = lbCurSel 1500;
if (_index == -1) exitWith {};
_data = parseNumber (lbData [1500, _index]);

_player = RPF_Prisoners select _data;

[_player] remoteExecCall ["ServerModules_fnc_releaseFromJail", 2];

closeDialog 0;
[] call ClientModules_fnc_openFreePrisoners;
