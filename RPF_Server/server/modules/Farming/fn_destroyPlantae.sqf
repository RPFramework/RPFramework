/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

params ["_plant"];

_pia = RPF_plantArray find _plant;
RPF_plantArray deleteAt _pia;
deleteVehicle _plant;