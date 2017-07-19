params [["_vehicle",objNull,[objNull]]];

//Make sure to:

//Clean keys
_vehicle addMPEventHandler ["mpkilled",{if (!isServer) exitWith {}; _this call Server_fnc_killedHandlerKeys}];

//Remove from database
_vehicle addMPEventHandler ["mpkilled",{if (!isServer) exitWith {}; _this call Server_fnc_killedHandlerVehicle}];
