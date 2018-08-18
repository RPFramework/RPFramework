/*
Author: Kerkkoh
First Edit: 28.12.2016
*/
disableSerialization;
params ["_police", "_medics"];

lbClear 1502;
{
	private _new = lbAdd [1502, _x select 1];
	lbSetData [1502, _new, _x select 1];
	true;
}count _medics;
lbSort ((findDisplay 1086) displayCtrl 1502);

lbClear 1501;
{
	private _new = lbAdd [1501, _x select 1];
	lbSetData [1501, _new, _x select 1];
	true;
}count _police;
lbSort ((findDisplay 1086) displayCtrl 1501);

RPF_dispatchPoliceCars = _police;
RPF_dispatchMedicCars = _medics;
