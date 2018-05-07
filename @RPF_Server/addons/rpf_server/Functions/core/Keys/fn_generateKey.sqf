/*
Author: Kerkkoh
Last Edit: 18.7.2017
*/
private["_key","_abc","_keyArr","_q"];
_abc = [
	["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"],
	["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"],
	["1","2","3","4","5","6","7","8","9"]
];

for "_i" from 0 to 1 step 0 do {
	_keyArr = ["vk_"];
	for "_x" from 1 to 15 step 1 do {
		_keyArr pushBack selectRandom (_abc select (floor random 3));
	};
	_key = _keyArr joinString "";

	_q = [0, (format["existKey:%1", _key])] call ExternalS_fnc_ExtDBquery;

	if (!((_q select 0) select 0)) exitWith {};
};

_key
