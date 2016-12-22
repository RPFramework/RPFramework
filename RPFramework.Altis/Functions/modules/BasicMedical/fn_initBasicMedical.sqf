/*
Author: Kerkkoh
First Edit: 28.4.2016

Additional Information:
Basic medical module supplied with RPFramework by default, but it can be disabled easily in case you want to use ACE or another medical system
*/
RPF_UnconsciousTime = 300;

player setVariable ["unconscious", false, true];
player setVariable ["stabilized", false, true];

{
	if (((_x select 1) select 0) == "Use Item") exitWith {
		((RPF_InteractionMenuItems select _forEachIndex) select 0) pushBack "!(player getVariable 'unconscious')";
	};
}forEach RPF_InteractionMenuItems;

[] call ClientModules_fnc_initBasicMedicalMenu;

player addEventHandler["HandleDamage",{
	_damage = _this select 2;
	_returnDamage = _damage;
	if (!(player getVariable "unconscious") && _damage >= 0.9 && alive player) then {
		player allowDamage false;
		[]spawn ClientModules_fnc_basicMedicalUnconscious;
		_returnDamage = 0;
	};
	_returnDamage;
}];
