/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
enableSaving [false, false];

sleep 1;

if (isServer) then {
	["rpframework", "SQL_CUSTOM", "rpframework.ini"] spawn ExternalS_fnc_ExtDBinit;
	sleep 3;
	[] call Server_fnc_handleDisconnect;
	[] spawn Server_fnc_statSaveLoop;
	
	[] call ServerModules_fnc_initModules;
} else {
	waitUntil {sleep 0.1; !(isNil {player}) && player == player && alive player};
	cutText ["Loading in...","BLACK",1];
	sleep 5;
	[player] remoteExecCall ["Server_fnc_initStats", 2];
	sleep 3;
	
	cutText ["","plain",1];
	[] spawn Client_fnc_initHudLoop;

	[] call Client_fnc_miscVariables;
	
	[] call Client_fnc_initInteractions;
	
	player setVariable ["cuffed", false, true];

	RPF_Holstered = 0;
	
	(findDisplay 46) displayAddEventHandler ["KeyDown", {
		if ((_this select 1) == RPF_InteractionKey) then {
				[]call Client_fnc_openInteraction;
			false;
		}
	}];
	
	[] spawn Client_fnc_initSurvivalLoop;
	
	[] call ClientModules_fnc_initModules;
};