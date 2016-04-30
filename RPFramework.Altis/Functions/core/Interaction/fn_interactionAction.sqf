/*
Author: Kerkkoh
First Edit: 16.4.2016
*/
params ["_index"];

closeDialog 0;
_a = RPF_iCurActionArray select _index;
call compile _a;
