/*
	File: fn_delivery.sqf
	Author: J. Schmidt

	Description:
	Creates the Delivery Mission.
*/

if (!isNil "myMarker") then {
    myMarker setMarkerText "";
};

_myMarkerArray = ["Varnville", "Kohler", "Keysville"];
myMarker = (_myMarkerArray call BIS_fnc_selectRandom);

myMarker setMarkerShape "ICON";
myMarker setMarkerType "mil_dot";
myMarker setMarkerText (format ["Current Warehouse: %1", myMarker]);

task = player createSimpleTask ["Deliver Package"];
task setSimpleTaskDescription [
	"Deliver the package to the indicated warehouse.",
	"Deliver Package",
	"Destination"
];
task setSimpleTaskDestination (getMarkerPos myMarker);
task setTaskState "Created";
player setCurrentTask task;

hint format ["Deliver the package to %1", myMarker];

_unit = "C_Nikos_aged" createVehicle getMarkerPos myMarker;
_unit setDir 270;
_unit addAction ["Drop-Off Package", "[] call ClientModules_fnc_deliveryEnd"];

/*
_trailerArray = ["Jonzie_Curtain", "Jonzie_Curtain_Roadtrain", "Jonzie_Flatbed", "Jonzie_Flatbed_Roadtrain"];
trailer = (_trailerArray call BIS_fnc_selectRandom) createVehicle getMarkerPos "trailerSpawn";
trailer setDir 90;
*/