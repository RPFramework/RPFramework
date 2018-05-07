/*
Author: Kerkkoh
First Edit: 27.9.2016

0 - NUMBER - ID of the criminal in the db
1 - STRING - Either the crime the criminal is wanted for, or "no" for no wanted status
2 - NUMBER - 0 for updating the reason/crime the criminal is wanted for, anything else for setting the criminal not wanted
*/
params["_id", "_wanted", "_mode"];

if (_mode isEqualTo 0) then {
	[0, format ["ppDBupdateCriminal:%1:%2", _wanted, _id]] call ExternalS_fnc_ExtDBquery;
} else {
	[0, format ["ppDBupdateCriminal:%1:%2", "no", _id]] call ExternalS_fnc_ExtDBquery;
};
