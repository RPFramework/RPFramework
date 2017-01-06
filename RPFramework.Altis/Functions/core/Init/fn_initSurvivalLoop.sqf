/*
Author: Kerkkoh
First Edit: 19.4.2016
*/

for "_i" from 0 to 1 step 0 do {
	sleep 240;
	_hunger = (player getVariable "hunger");
	_thirst = (player getVariable "thirst");
	
	player setVariable ["hunger", _hunger + 1, true];
	player setVariable ["thirst", _thirst + 2, true];
	switch (true) do {
		case (_hunger >= 100): {
			_ndmg = (damage player) + 0.2;
			if (_ndmg >= 1) then {
				player setVariable ["hunger", 0, true];
				player setVariable ["thirst", 0, true];
				player setDamage 1;
			} else {
				player setDamage _ndmg;
			};
			hint (parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#750016' size='1.2'>Starvation imminent!!</t>");
		};
		case (_hunger >= 90): {
			hint (parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#B80000'>You are starving!</t>");
		};
	};
	switch (true) do {
		case (_thirst >= 100): {
			_ndmg = (damage player) + 0.2;
			if (_ndmg >= 1) then {
				player setVariable ["hunger", 0, true];
				player setVariable ["thirst", 0, true];
				player setDamage 1;
			} else {
				player setDamage _ndmg;
			};
			hint (parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#0F0094' size='1.2'>You are dying of thirst!!</t>");
		};
		case (_thirst >= 90): {
			hint (parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#1700E6'>You really need a drink!</t>");
		};
	};
};