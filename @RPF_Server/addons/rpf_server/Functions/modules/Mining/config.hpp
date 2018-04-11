class RPF_miningServerModule {
	// MODEL names for rocks that one can mine (Make sure this matches with the client side config!)
	rocks[] = {
		"sharpstone_01.p3d",
		"sharpstone_02.p3d",
		"sharpstone_03.p3d"
	};
	
	// Array of positions for the mines
	minePositions[] = {
		{17058.1,11305,23.2924}
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
		pos[] = {17058.1,11305,23.2924};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_MINING_MINE;
	};
	class marker2 {
		name = "minetrader";
		pos[] = {16934.2,12704.7,18.2483};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_MINING_TRADER;
	};
	class marker3 {
		name = "mineprocessing";
		pos[] = {17204.8,13310.9,13.0049};
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
		className = "a3\structures_f\furniture\tabledesk_f.p3d";
		pos[] = {16934.2,12704.7,18.2483};
		dir = 194.531;
		shopName = $STR_RPF_MINING_TRADER;
		buyItems[] = {
			{"RPF_Mining_Grinder", 150, 0}
		};
		sellItems[] = {
			{"RPF_Mining_Minerals", 10, 0},
			{"RPF_Mining_Gold", 100, 0},
			{"RPF_Mining_Iron", 50, 0},
			{"RPF_Mining_Lead", 50, 0},
			{"RPF_Mining_Copper", 25, 0},
			{"RPF_Mining_Diamond", 500, 0}
		};
		isProcessing = 0;
	};
	class shop2 {
		className = "a3\structures_f\furniture\tabledesk_f.p3d";
		pos[] = {17204.8,13310.9,13.0049};
		dir = 10;
		shopName = $STR_RPF_MINING_PROCESSING;
		buyItems[] = {};
		sellItems[] = {};
		isProcessing = 1;
	};
};