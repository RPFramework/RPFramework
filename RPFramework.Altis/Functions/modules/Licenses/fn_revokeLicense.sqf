/*
Author: Kerkkoh
First Edit: 24.4.2017
*/
_indx = lbCurSel 1500;
if (_indx == -1) exitWith {};

_id = 0;
{
	if ((lbText [1500, _indx]) == (_x select 1)) then {
		_id = (_x select 0);
	};
}forEach (RPF_licenseManageTarget getVariable "licenses");

[_id, RPF_licenseManageTarget, (lbText [1500, _indx])] remoteExecCall ["ServerModules_fnc_deleteLicense", 2];

RPF_licenseManageTarget = nil;
closeDialog 0;
