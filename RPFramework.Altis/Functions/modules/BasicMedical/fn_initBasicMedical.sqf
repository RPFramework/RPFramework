/*
Author: Kerkkoh
First Edit: 28.4.2016

Additional Information:
Basic medical module supplied with RPFramework by default, but it can be disabled easily in case you want to use ACE or another medical system
*/
RPF_UnconsciousTime = 300;

player setVariable ["unconscious", false, true];
player setVariable ["stabilized", false, true];

[] call ClientModules_fnc_initBasicMedicalMenu;

player addEventHandler["HandleDamage",{
	_selectionName = _this select 1;
	_damage = _this select 2;
	_returnDamage = _damage;

	if (!(player getVariable "unconscious") && _damage >= 0.9 && alive player && !(_selectionName in ["head_hit", "head", "Head", "Neck"])) then {
		player allowDamage false;
		[]spawn ClientModules_fnc_basicMedicalUnconscious;
		_returnDamage = 0;
	};
	if (_selectionName in ["head_hit", "head", "Head", "Neck"]) then {
		_returnDamage = 1;
		_money = "Land_Money_F" createVehicle position player;
		_cash = player getVariable "cash";
		_money setVariable ["money", _cash, true];
		player setVariable ["cash", 0, true];
	};
	_returnDamage;
}];
