/*
Author: theflyingjets
*/

player switchmove "AinjPfalMstpSnonWnonDf_carried_fallwc";
disableUserInput true;
sleep ((missionConfigFile >> "RPF_taserModule" >> "taserTime") call BIS_fnc_getCfgData);
player allowDamage true;
player setFatigue 1;
disableUserInput false;
player switchMove "";
