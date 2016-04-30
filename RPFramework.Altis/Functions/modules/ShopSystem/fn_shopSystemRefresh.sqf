/*
Author: Kerkkoh
First Edit: 23.4.2016

onLbSelChanged = []call ClientModules_fnc_shopSystemRefresh;
*/
_index = lbCurSel 1500;
_data = lbData [1500, _index];
_dataArray = call compile _data;
_curPrice = _dataArray select 1;
ctrlSetText [1002, str _curPrice];
