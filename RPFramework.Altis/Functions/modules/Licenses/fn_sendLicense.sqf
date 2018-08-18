/*
Author: Kerkkoh
First Edit: 24.4.2017
*/
private ["_indx","_license"];

_indx = lbCurSel 1500;
if (_indx isEqualTo -1) exitWith {};

_license = "";
{
	if ((parseNumber (lbData [1500, _indx])) isEqualTo (_x select 0)) then {
		_license = (_x select 2);
	};
}forEach (player getVariable "licenses");

[_license] remoteExecCall ["ClientModules_fnc_openLicense", RPF_sendLicenseTarget];

closeDialog 0;

RPF_sendLicenseTarget = nil;
