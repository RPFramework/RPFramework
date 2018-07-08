/*
Author: Kerkkoh
First Edit: 19.4.2016
*/
for "_i" from 0 to 1 step 0 do {
	private["_hunger", "_thirst"];
	sleep getNumber(missionConfigFile >> "RPF_Config" >> "SurvivalSleepLoop");

	_hunger = player getVariable "hunger";
	_thirst = player getVariable "thirst";

	player setVariable ["hunger", _hunger + 1, true];
	player setVariable ["thirst", _thirst + 2, true];
	switch (true) do {
		case (_hunger >= 100): {
			private _ndmg = (damage player) + 0.2;
			if (_ndmg >= 1) then {
				player setVariable ["hunger", 0, true];
				player setVariable ["thirst", 0, true];
				player setDamage 1;
			} else {
				player setDamage _ndmg;
			};
			hint (parseText (localize "STR_RPF_CORE_SURVIVALLOOP_STARVINGIMMINENT"));
		};
		case (_hunger >= 90): {
			hint (parseText (localize "STR_RPF_CORE_SURVIVALLOOP_STARVING"));
		};
	};
	switch (true) do {
		case (_thirst >= 100): {
			private _ndmg = (damage player) + 0.2;
			if (_ndmg >= 1) then {
				player setVariable ["hunger", 0, true];
				player setVariable ["thirst", 0, true];
				player setDamage 1;
			} else {
				player setDamage _ndmg;
			};
			hint (parseText (localize "STR_RPF_CORE_SURVIVALLOOP_DYINGOFTHIRST"));
		};
		case (_thirst >= 90): {
			hint (parseText (localize "STR_RPF_CORE_SURVIVALLOOP_NEEDADRINK"));
		};
	};
};
