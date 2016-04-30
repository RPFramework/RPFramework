/*
Author: Kerkkoh
First Edit: 14.3.2016

Type: Default Module

Info: Current taser weapon is 	hgun_Rook40_snds_F, it uses 16Rnd_9x21_Mag and 30Rnd_9x21_Mag
*/
RPF_TaserProjectiles = ["16Rnd_9x21_Mag", "30Rnd_9x21_Mag"];

player addEventHandler["HandleDamage",{
		if ((_this select 4) in RPF_TaserProjectiles) exitWith {
			[]call ClientModules_fnc_getTazed;
			_returnDamage = 0;
			_returnDamage;
		};
}];