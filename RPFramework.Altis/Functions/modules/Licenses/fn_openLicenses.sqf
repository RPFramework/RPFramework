/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

params["_target"];

RPF_sendLicenseTarget = _target;

createDialog "licenses";

{
	private _l = lbAdd [1500, (_x select 1)];
	lbSetData [1500, _l, str(_x select 0)];
}forEach (player getVariable "licenses");
