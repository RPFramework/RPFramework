/*
Author: Kerkkoh
First Edit: 24.4.2017
*/
private _indx = lbCurSel 1500;
if (_indx isEqualTo -1) exitWith {};

[(lbText [1500, _indx]), format[(lbData [1500, _indx]), name RPF_licenseManageTarget], RPF_licenseManageTarget] remoteExecCall ["ServerModules_fnc_insertLicense", 2];

RPF_licenseManageTarget = nil;
closeDialog 0;
