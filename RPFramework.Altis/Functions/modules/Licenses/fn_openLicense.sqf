/*
Author: Kerkkoh
First Edit: 24.4.2017
*/
disableSerialization;

params["_license"];

private _lc = uiNamespace getVariable ["LicenseCard", displayNull];

if(isNull _lc) then {
    "licenseLayer" cutRsc ["LicenseCard", "PLAIN"];
    _lc = uiNamespace getVariable ["LicenseCard", displayNull];
};

(_lc displayCtrl 1100) ctrlSetStructuredText parseText _license;