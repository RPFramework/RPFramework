/*
Author: Kerkkoh
First Edit: 28.12.2016
*/
params ["_idcLB", "_idcCB"];

_indexLB = lbCurSel _idcLB;
_indexCB = lbCurSel _idcCB;
if (_indexLB == -1 || _indexCB == -1) exitWith {};

_data = lbData [_idcCB, _indexCB];
_color = parseSimpleArray _data;

lbSetColor [_idcLB, _indexLB, _color];