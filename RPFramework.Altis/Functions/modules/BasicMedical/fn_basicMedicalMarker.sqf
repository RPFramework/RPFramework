/*
Author: Kerkkoh
First Edit: 28.4.2016

Additional Information:
0 - Add
1 - Delete
*/
params ["_addOrDel", "_uid", "_positionPlayer"];
if (_addOrDel isEqualTo 0) then {
	private _unconsciousMarker = createMarkerLocal [_uid, _positionPlayer];
	_unconsciousMarker setMarkerShapeLocal "ICON";
	_unconsciousMarker setMarkerTypeLocal "KIA";
	_unconsciousMarker setMarkerTextLocal (localize "STR_RPF_MODULES_BASICMEDICAL_UNCONSCPERS");
	_unconsciousMarker setMarkerColorLocal "ColorRed";
	hint (localize "STR_RPF_MODULES_BASICMEDICAL_UNCONSC");
} else {
	deleteMarkerLocal _uid;
}
