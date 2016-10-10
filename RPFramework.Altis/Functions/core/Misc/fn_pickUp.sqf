/*
Author: Kerkkoh
First Edit: 2.5.2016
*/

params ["_ct"];

RPF_curAttachedMass = getMass _ct;

_ct attachTo [player, [0,2,0.7]];

_ct setMass 0.001;