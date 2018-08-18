/*
Author: Kerkkoh
First Edit: 28.12.2016
*/
params ["_idcLB", "_idcCB"];
private ["_indexLB","_indexCB"];

_indexLB = lbCurSel _idcLB;
_indexCB = lbCurSel _idcCB;
if (_indexLB isEqualTo -1 || _indexCB isEqualTo -1) exitWith {};

lbSetColor [_idcLB, _indexLB, parseSimpleArray lbData [_idcCB, _indexCB]];
