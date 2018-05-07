/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
params["_player", "_id", "_crime"];

[0, format ["ppDBinsertCrime:%1:%2:%3", _crime, _id, missionStart]] call ExternalS_fnc_ExtDBquery;

[_player, _id]call ServerModules_fnc_policePlusDBfetchCrimes;
