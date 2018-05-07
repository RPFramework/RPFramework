/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

params ["_plant"];

RPF_plantArray deleteAt (RPF_plantArray find _plant);

deleteVehicle _plant;
