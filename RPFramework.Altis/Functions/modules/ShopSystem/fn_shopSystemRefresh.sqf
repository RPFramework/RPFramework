/*
Author: Kerkkoh
First Edit: 23.4.2016

onLbSelChanged = []call ClientModules_fnc_shopSystemRefresh;

This looks super confusing but at its core it just updates the current price of the item you selected in the listbox to the text field 1002
*/

ctrlSetText [1002, str ((parseSimpleArray lbData [1500, lbCurSel 1500]) select 1)];
