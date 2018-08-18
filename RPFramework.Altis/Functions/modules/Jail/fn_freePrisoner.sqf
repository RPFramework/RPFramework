/*
Author: Kerkkoh
First Edit: 6.12.2016
*/
private _index = lbCurSel 1500;
if (_index isEqualTo -1) exitWith {};

[RPF_Prisoners select (parseNumber (lbData [1500, _index]))] remoteExecCall ["ServerModules_fnc_releaseFromJail", 2];

closeDialog 0;
[] call ClientModules_fnc_openFreePrisoners;
