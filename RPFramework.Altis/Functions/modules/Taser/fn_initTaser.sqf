/*
Author: theflyingjets
*/
player addEventHandler [ "HandleDamage",
{
    private [ "_projectile"];

    _projectile = _this select 4;

    if (_projectile in ((missionConfigFile >> "RPF_taserModule" >> "taserProjectiles") call BIS_fnc_getCfgData)) then
    {
        player allowDamage false;
        []spawn ClientModules_fnc_getTazed;
        _returnDamage = 0;
    };
_returnDamage;
}];
