/*
Author: theflyingjets
**Works**
_shooter, _victim and _dist will be used to set a max dis to the shot.
*/
RPF_taserProjectiles = ["B_9x21_Ball"];
player addEventHandler [ "HandleDamage",
{
    private [ "_shooter", "_projectile"];

    _shooter = _this select 0;
    _curWep = _this select 1;
    _damageused = _this select 2;
    _source = _this select 3;
    _projectile = _this select 4;

    if (_projectile in RPF_taserProjectiles) then
    {
        player allowDamage false;
        []call ClientModules_fnc_getTazed;
        _returnDamage = 0;
    };
_returnDamage;
}];

RPF_taserProjectiles = ["B_9x21_Ball"];
