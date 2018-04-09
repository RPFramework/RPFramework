/*
Author: theflyingjets
*/
player addEventHandler [ "HandleDamage", {
    if ((_this select 4) in ((missionConfigFile >> "RPF_taserModule" >> "taserProjectiles") call BIS_fnc_getCfgData)) then {
        player allowDamage false;
        []spawn ClientModules_fnc_getTazed;
        _returnDamage = 0;
    };
_returnDamage;
}];
