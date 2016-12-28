/*
Author: Kerkkoh
First Edit: 16.4.2016
*/
params ["_index"];

closeDialog 0;

call compile (RPF_iCurActionArray select _index);
