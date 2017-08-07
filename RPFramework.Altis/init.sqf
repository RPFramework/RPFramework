/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
enableSaving [false, false];

uiSleep 1;

if (isServer) then {
	[] call Server_fnc_handleDisconnect;
	[] spawn Server_fnc_statSaveLoop;
	
	[] call ServerModules_fnc_initModules;
} else {
	waitUntil {uiSleep 0.01; !(isNil {player}) && player == player && alive player};
	cutText ["Loading in...","BLACK",1];
	
	[player, false] remoteExec ["Server_fnc_initStats", 2];
	
	waitUntil {uiSleep 0.01; player getVariable ["loadedIn", false]};
	
	cutText ["","plain",1];
	
	[] spawn Client_fnc_initHudLoop;

	[] call Client_fnc_miscVariables;
	
	[] call Client_fnc_initInteractions;
	
	player setVariable ["cuffed", false, true];

	RPF_Holstered = 0;
	
	waituntil {uiSleep 0.01; !(isNull (findDisplay 46))};
	
	[(missionConfigFile >> "RPF_Config" >> "interactionKey") call BIS_fnc_getCfgData, 
	{
		[]call Client_fnc_openInteraction;
		false;
	}] call Client_fnc_addHotkey;
	
	[] spawn Client_fnc_initSurvivalLoop;
	
	[] call ClientModules_fnc_initModules;
};
