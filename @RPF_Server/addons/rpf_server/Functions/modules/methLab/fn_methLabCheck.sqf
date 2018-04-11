/*
Author: Kerkkoh
First Edit: 22.9.2016
*/

params ["_items", "_player"];
private ["_recipe", "_probability"];

{
	for "_i" from 1 to (_x select 1) step 1 do {
		_player removeItem (_x select 0);
	};
}forEach _items;

_items sort true;
_recipe = "";
_probability = 0;
{
	// needs to be a (item amount) mod (recipe amount) == 0 check but maybe in some other function
	private ["_recipeItems"];
	_recipeItems = _x select 2;
	_recipeItems sort true;
	if (_items isEqualTo _recipeItems) then {
		_recipe = (_x select 0);
		_probability = (_x select 1);
	};
}forEach ((configFile >> "RPF_methLabServerModule" >> "recipes") call BIS_fnc_getCfgData);

[_recipe, _probability] remoteExec ["ClientModules_fnc_methStartCooking", _player];
