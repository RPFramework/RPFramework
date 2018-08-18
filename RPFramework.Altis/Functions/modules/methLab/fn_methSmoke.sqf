/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_object", "_col", "_time"];
private ["_source", "_source2"];
_col params ["_c1","_c2","_c3"];

_source = "#particlesource" createVehicle getpos _object;
_source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 20, [0, 0, 0], [0.2, 0.1, 0.1], 0, 1.267, 1, 0.025, [0.1, 2, 6], [[_c1, _c2, _c3, 0.2], [_c1, _c2, _c3, 0.05], [_c1, _c2, _c3, 0]], [1.5,0.5], 1, 0.04, "", "", _object];
_source setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
_source setDropInterval 0.03;

_source2 = "#particlesource" createVehicle getpos _object;
_source2 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 8, 0], "", "Billboard", 1, 20, [0, 0, 0], [0.2, 0.1, 0.1], 0, 1.267, 1, 0.025, [0.1, 2, 6], [[_c1, _c2, _c3, 1], [_c1, _c2, _c3, 0.5], [_c1, _c2, _c3, 0]], [0.2], 1, 0.04, "", "", _object];
_source2 setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.2], 0, 0, 360];
_source2 setDropInterval 0.03;

uiSleep _time;
deleteVehicle _source;
deleteVehicle _source2;
