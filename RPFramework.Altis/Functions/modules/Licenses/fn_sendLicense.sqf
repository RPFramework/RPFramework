/*
Author: Kerkkoh
First Edit: 24.4.2017
*/

_indx = lbCurSel 1500;
if (_indx == -1) exitWith {};
_id = parseNumber (lbData [1500, _indx]);

_license = "";
{
	if (_id == (_x select 0)) then {
		_license = (_x select 2);
	};
}forEach (RPF_sendLicenseTarget getVariable "licenses");

[_license] remoteExecCall ["ClientModules_fnc_openLicense", RPF_sendLicenseTarget];

closeDialog 0;

RPF_sendLicenseTarget = nil;
