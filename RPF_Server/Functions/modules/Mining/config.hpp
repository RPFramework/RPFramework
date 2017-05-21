class RPF_miningServerModule {
	// Classnames for rocks that one can mine (Make sure this matches with the client side config!)
	rocks[] = {
		"RPF_Mining_Rock1",
		"RPF_Mining_Rock2",
		"RPF_Mining_Rock3"
	};
	
	// Array of positions for the mines
	minePositions[] = {
		{17058.1,11305,0.00146484}
	};
	
	// How long should it take for the rocks to respawn
	rockRespawningSpeed = 60;
	
	// Mining markers
	miningMarkers[] = {
		"marker1",
		"marker2",
		"marker3"
	};
	
	class marker1 {
		name = "mine";
		pos[] = {17058.1,11305,0.00146484};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_MINING_MINE;
	};
	class marker2 {
		name = "minetrader";
		pos[] = {16934.2,12704.7,17.802};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_MINING_TRADER;
	};
	class marker3 {
		name = "mineprocessing";
		pos[] = {17204.8,13310.9,12.5823};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_MINING_PROCESSING;
	};
	
	// Shops and processing points
	miningShops[] = {
		"shop1",
		"shop2"
	};
	
	class shop1 {
		className = "OfficeTable_01_new_F";
		pos[] = {16934.2,12704.7,17.802};
		dir = 194.531;
		shopName = "Mineral trader";
		buyItems[] = {
			{"RPF_Mining_Grinder", 150, 0}
		};
		sellItems[] = {
			{"RPF_Mining_Minerals", 10, 0},
			{"RPF_Mining_Gold", 100, 0},
			{"RPF_Mining_Iron", 50, 0},
			{"RPF_Mining_Copper", 25, 0}
		};
		isProcessing = 0;
	};
	class shop2 {
		className = "OfficeTable_01_new_F";
		pos[] = {17204.8,13310.9,12.5823};
		dir = 194.521;
		shopName = "";
		buyItems[] = {};
		sellItems[] = {};
		isProcessing = 1;
	};
};