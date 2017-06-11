/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
params["_player", "_id", "_crime"];

_insertstr = format ["ppDBinsertCrime:%1:%2:%3", _crime, _id, missionStart];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;

[_player, _id]call ServerModules_fnc_policePlusDBfetchCrimes;
