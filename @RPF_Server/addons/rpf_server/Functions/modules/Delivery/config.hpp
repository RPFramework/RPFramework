class RPF_deliveryServerModule {
	// You add a class like the others and then you add it's name as a string to the array deliveryPhysicals so the script will load it
	
	deliveryPhysicals[] = { "phys1", "phys2", "phys3" };
	
	class phys1 {
		className = "a3\structures_f\furniture\tabledesk_f.p3d";
		pos[] = {16756.6,12500.2,13.1732};
		dir = 143.888;
		variable = "delivery";
	};
	class phys2 {
		className = "a3\structures_f\furniture\tabledesk_f.p3d";
		pos[] = {14882.9,11054.8,9.88242};
		dir = 178.702;
		variable = "dp1";
	};
	class phys3 {
		className = "a3\structures_f\furniture\tabledesk_f.p3d";
		pos[] = {16987.1,14904.7,13.0736};
		dir = 270;
		variable = "dp2";
	};
	
	deliveryMarkers[] = { "marker1" };
	
	class marker1 {
		name = "deliveryStation";
		pos[] = {16758.184, 12500.937, 0.275};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_DELIVERY_DP;
	};
};