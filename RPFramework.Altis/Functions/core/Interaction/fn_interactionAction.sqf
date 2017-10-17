/*
Author: Kerkkoh
First Edit: 16.4.2016

Let's execute the action attached to the button we pressed
*/
params ["_index"];

closeDialog 0;

call compile (RPF_iCurActionArray select _index);
