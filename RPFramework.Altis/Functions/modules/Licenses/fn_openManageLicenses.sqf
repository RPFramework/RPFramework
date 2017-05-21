/*
Author: Kerkkoh
First Edit: 24.4.2017
*/

params["_target"];

createDialog "manageLicenses";

RPF_licenseManageTarget = _target;

_licenses = [];
{
	_licenses pushBack (_x select 1);
}forEach (RPF_licenseManageTarget getVariable "licenses");

{
	_lname = (_x select 0);
	_l = lbAdd [1500, _lname];
	lbSetData [1500, _l, _x select 1];
	_c = [];
	if (_lname in _licenses) then {
		_c = [0,1,0,1];
	} else {
		_c = [1,0,0,1];
	};
	lbSetColor [1500, _l, _c];
}forEach ((missionConfigFile >> "RPF_licensesModule" >> "licenses") call BIS_fnc_getCfgData);

lbSetCurSel [1500, 0];
