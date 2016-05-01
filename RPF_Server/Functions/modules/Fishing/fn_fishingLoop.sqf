/*
Author: Kerkkoh
First Edit: 17.4.2016
*/
while {true} do 
{
	sleep 120;
	{
		if (underwater _x) then 
		{
			_random = (floor random 2) + 1;
			_x addItemCargoGlobal ["RPF_Items_Salema", _random]
		};
	}forEach RPF_fishingNets;
};