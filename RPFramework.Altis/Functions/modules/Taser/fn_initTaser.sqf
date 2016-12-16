/*
Author: theflyingjets
**Works**
_shooter, _victim and _dist will be used to set a max dis to the shot.
*/
RPF_taserProjectiles = ["B_9x21_Ball"];
player addEventHandler [ "HandleDamage",
{
    private [ "_projectile"];

    _projectile = _this select 4;

    if (_projectile in RPF_taserProjectiles) then
    {
        player allowDamage false;
        []spawn ClientModules_fnc_getTazed;
        _returnDamage = 0;
    };
_returnDamage;
}];

RPF_taserProjectiles = ["B_9x21_Ball"];
