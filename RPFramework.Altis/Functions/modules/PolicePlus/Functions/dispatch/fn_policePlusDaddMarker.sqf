/*
Author: Kerkkoh
First Edit: 28.12.2016
*/

params["_ctrl", "_xC", "_yC"];

deleteMarkerLocal "tdm";

private _m = createMarkerLocal ["tdm", _ctrl ctrlMapScreenToWorld [_xC,_yC]]; 
_m setMarkerShapeLocal "ICON";
_m setMarkerTypeLocal "hd_objective";
_m setMarkerTextLocal (localize "STR_RPF_MODULES_POLICEPLUS_DLOCATION");
_m setMarkerColorLocal "ColorYellow";

ctrlSetText [1002, str (getMarkerPos "tdm")];
