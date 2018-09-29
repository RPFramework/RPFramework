/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
enableSaving [false, false];

uiSleep 1;

if (isServer) then {
	[] call Server_fnc_handleDisconnect;
	[] spawn Server_fnc_statSaveLoop;

	[] spawn Server_fnc_initInteractions;
	[] spawn Server_fnc_initModules;
} else {
	waitUntil {uiSleep 0.01; !(isNil {player}) && player == player && alive player};
	cutText ["Loading in...","BLACK",1];

	[player, false] remoteExec ["Server_fnc_initStats", 2];

	waitUntil {uiSleep 0.01; player getVariable ["loadedIn", false]};

	cutText ["","plain",1];

	[] spawn Client_fnc_initHudLoop;

	[] call Client_fnc_miscVariables;

	player setVariable ["cuffed", false, true];

	waituntil {uiSleep 0.01; !(isNull (findDisplay 46))};

	(findDisplay 46) displayAddEventHandler ["KeyDown", {
		switch (_this select 1) do {
			case (getNumber(missionConfigFile >> "RPF_Config" >> "interactionKey")): {
				[]call Client_fnc_openInteraction;
				false;
			};
			//Holster/Unholster (default key H)
			case (getNumber(missionConfigFile >> "RPF_Config" >> "holsterKey")): {
				[]call Client_fnc_holster;
				false;
			};
			//Holster/Unholster (default key H)
			case (getNumber(missionConfigFile >> "RPF_Config" >> "unlockCarKey")): {
				if !(player == vehicle player) then {
					[vehicle player]call Client_fnc_useKey;
				} else {
					[cursorObject]call Client_fnc_useKey;
				};
				false;
			};
			default {
				false;
			};
		};
	}];
	
	player addEventHandler ["GetOutMan", {
		[]call Client_fnc_holster;
	}];

	[] spawn Client_fnc_initSurvivalLoop;

	[] call Client_fnc_initModules;
};
