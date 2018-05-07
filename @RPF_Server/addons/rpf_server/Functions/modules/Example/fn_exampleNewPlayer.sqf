/*
Author: Kerkkoh
First Edit: 23.12.2016

Additional Information:
Here you can add some scripts to run on the server when a player logs in to the server.

For example, you could set a new default starting money here or maybe make everyone a police officer.
*/
params["_explayer"];

diag_log format [localize "STR_RPF_EXAMPLE_NEWPLAYER", name _explayer, missionStart select 1, missionStart select 2, missionStart select 0, missionStart select 3, missionStart select 4];
