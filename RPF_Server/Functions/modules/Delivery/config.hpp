class RPF_deliveryServerModule {
	// You add a class like the others and then you add it's name as a string to the array deliveryPhysicals so the script will load it
	
	deliveryPhysicals[] = { "phys1", "phys2", "phys3" };
	
	class phys1 {
		className = "OfficeTable_01_new_F";
		pos[] = {16758.184, 12500.937, 0.275};
		dir = 143.888;
		variable = "delivery";
	};
	class phys2 {
		className = "OfficeTable_01_new_F";
		pos[] = {14882.873, 11054.816, 0};
		dir = 178.702;
		variable = "dp1";
	};
	class phys3 {
		className = "OfficeTable_01_new_F";
		pos[] = {16987.119, 14904.747, 0};
		dir = 89.324;
		variable = "dp1";
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