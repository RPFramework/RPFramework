/*
Author: Kerkkoh
First Edit: 19.4.2016
*/

for "_i" from 0 to 1 step 0 do {
	sleep 240;
	RPF_hunger = RPF_hunger + 1;
	RPF_thirst = RPF_thirst + 2;
	switch (true) do {
		case (RPF_hunger >= 100): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#750016' size='1.2'>Starvation imminent!!</t>";
			_newdmg = (damage player) + 0.2;
			if (_newdmg >= 1) then {
				RPF_hunger = 0;
				RPF_thirst = 0;
				player setDamage 1;
			} else {
				player setDamage _newdmg;
			};
		};
		case (RPF_hunger >= 90): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#B80000'>You are starving!</t>";
			hint _hint;
		};
	};
	switch (true) do {
		case (RPF_thirst >= 100): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#0F0094' size='1.2'>You are dying of thirst!!</t>";
			_newdmg = (damage player) + 0.2;
			if (_newdmg >= 1) then {
				RPF_hunger = 0;
				RPF_thirst = 0;
				player setDamage 1;
			} else {
				player setDamage _newdmg;
			};
		};
		case (RPF_thirst >= 90): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#1700E6'>You really need a drink!</t>";
			hint _hint;
		};
/*	Pending Later Reintegration
	switch (true) do {
		case (RPF_hygiene >= 100): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#0F0094' size='1.2'>You are dying of stink!!</t>";
			_newdmg = (damage player) + 0.2;
			if (_newdmg >= 1) then {
				RPF_hunger = 0;
				RPF_thirst = 0;
				RPF_hygiene = 0;
				RPF_bladder = 0;
				RPF_energy = 0;
				player setDamage 1;
			} else {
				player setDamage _newdmg;
			};
		};
		case (RPF_hygiene >= 90): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#1700E6'>You really need a shower!</t>";
			hint _hint;
		};
	};
	switch (true) do {
		case (RPF_bladder >= 100): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#0F0094' size='1.2'>You are dying of an intestinal obstruction!!</t>";
			_newdmg = (damage player) + 0.2;
			if (_newdmg >= 1) then {
				RPF_hunger = 0;
				RPF_thirst = 0;
				RPF_hygiene = 0;
				RPF_bladder = 0;
				RPF_energy = 0;
				player setDamage 1;
			} else {
				player setDamage _newdmg;
			};
		};
		case (RPF_bladder >= 90): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#1700E6'>You really need to relieve yourself!</t>";
			hint _hint;
		};
	};
	switch (true) do {
		case (RPF_energy >= 100): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#0F0094' size='1.2'>You are dying of an intestinal obstruction!!</t>";
			_newdmg = (damage player) + 0.2;
			if (_newdmg >= 1) then {
				RPF_hunger = 0;
				RPF_thirst = 0;
				RPF_hygiene = 0;
				RPF_bladder = 0;
				RPF_energy = 0;
				player setDamage 1;
			} else {
				player setDamage _newdmg;
			};
		};
		case (RPF_energy >= 90): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#1700E6'>You really need to relieve yourself!</t>";
			hint _hint;
		};
*/
	};
};