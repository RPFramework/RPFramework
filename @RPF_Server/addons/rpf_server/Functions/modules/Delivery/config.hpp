class RPF_deliveryServerModule {
	// You add a class like the others and then you add it's name as a string to the array deliveryPhysicals so the script will load it

	class physicals {
		class delivery {
			className = "a3\structures_f\furniture\tabledesk_f.p3d";
			pos[] = {16756.6,12500.2,13.1732};
			dir = 143.888;
		};
		class dp1 {
			className = "a3\structures_f\furniture\tabledesk_f.p3d";
			pos[] = {14882.9,11054.8,9.88242};
			dir = 178.702;
		};
		class dp2 {
			className = "a3\structures_f\furniture\tabledesk_f.p3d";
			pos[] = {16987.1,14904.7,13.0736};
			dir = 270;
		};
	};

	class markers {
		class deliveryStation {
			pos[] = {16758.184, 12500.937, 0.275};
			shape = "ICON";
			type = "hd_dot";
			text = $STR_RPF_DELIVERY_DP;
		};
	};
};
