/*
Author: Kerkkoh
First Edit: 28.4.2016

Additional Information:
0 - Add
1 - Delete
*/
params ["_addOrDel", "_uid", "_positionPlayer"];
if (_addOrDel == 0) then {
_unconsciousMarker = createMarkerLocal [_uid, _positionPlayer]; 
_unconsciousMarker setMarkerShapeLocal "ICON"; 
_unconsciousMarker setMarkerTypeLocal "KIA";
_unconsciousMarker setMarkerTextLocal "[EMS] Unconscious Person";
_unconsciousMarker setMarkerColorLocal "ColorRed";

hint "Someone has just gone unconscious! Check your map!";
} else {
	deleteMarkerLocal _uid;
}