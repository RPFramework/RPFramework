class RPF_garageModule {
    /*
	Reset vehicles' status through restarts
	(Put them in garage)
	*/
	resetVehicles = 1;
	
	/*
		Should we run a loop updating hitpoint data?
		1 (= true) || 0 (= false)
	*/
	vehicleStatSaveLoop = 1;
	/*
		How often the server should update vehicles hitpoint data (seconds)
	*/
	vehicleStatsUpdateInterval = 300;
};
