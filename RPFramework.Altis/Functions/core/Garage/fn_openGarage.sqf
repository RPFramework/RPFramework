/*
Author: Kerkkoh
First Edit: 2.12.2015
*/
params ["_ct"];

RPF_curGarage = _ct;

createDialog "garage";

ctrlSetText [1000, "Garage"];

_garage = player getVariable "garage";

{
	_vehName = [_x] call Client_fnc_getVehicleName;
	_veh = lbAdd [1500, _vehName];
	lbSetData [1500, _veh, _x];
}forEach _garage;

lbSetCurSel [1500, 0];