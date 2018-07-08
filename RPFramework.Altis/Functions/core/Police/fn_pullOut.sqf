params ["_vehicle"];

{
	_x action ["eject", _vehicle];
	true;
} count crew _vehicle;
