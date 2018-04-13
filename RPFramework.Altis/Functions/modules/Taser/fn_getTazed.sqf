/*
Author: theflyingjets
*/

player setUnconscious true;
uiSleep ((missionConfigFile >> "RPF_taserModule" >> "taserTime") call BIS_fnc_getCfgData);
player switchMove "";
player setUnconscious false;
player allowDamage true;
player setFatigue 1;
