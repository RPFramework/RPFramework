/*
Author: Kerkkoh
First Edit: 23.12.2016

Additional Information:
Here you can add some scripts to run on the server when a player logs in to the server.
For example, you could set a new default starting money here or maybe make everyone a police officer.
*/
params["_explayer"];

_log = format ["Example Module: %1's First time login on %2/%3/%4 %5:%6", name _explayer, missionStart select 1, missionStart select 2, missionStart select 0, missionStart select 3, missionStart select 4];
diag_log (_log);