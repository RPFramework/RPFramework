class RPF_jailServerModule {
	// Where prisoners are released after their time
	jailReleaseLocation[] = {16505.0, 12790.0, 0.000555992};

	// This adds the jail walls, I exported this from the NeoArmageddon's Map Builder and again so that the framework would keep its modularity, I spawn them in a script. Objects are as classes and then they are in this array so the script can pick them up
	class physicals {
		class phys1 {
			className = "a3\structures_f\walls\canal_wall_10m_f.p3d";
			pos[] = {16495.5,12801.6,10.9378};
			dir[] = {0,1,0};
			up[] = {0,0,1};
		};
		class phys2 {
			className = "a3\structures_f\walls\canal_wall_10m_f.p3d";
			pos[] = {16505.3,12801.6,11.335};
			dir[] = {0,1,0};
			up[] = {0,0,1};
		};
		class phys3 {
			className = "a3\structures_f\walls\canal_wall_10m_f.p3d";
			pos[] = {16495.1,12792.9,10.9769};
			dir[] = {-8.74228e-008,-1,0};
			up[] = {-0,0,1};
		};
		class phys4 {
			className = "a3\structures_f\walls\canal_wall_10m_f.p3d";
			pos[] = {16505,12792.9,11.5691};
			dir[] = {-8.74228e-008,-1,0};
			up[] = {-0,0,1};
		};
		class phys5 {
			className = "a3\structures_f\walls\canal_wall_10m_f.p3d";
			pos[] = {16500.2,12797.4,11.1131};
			dir[] = {1,-4.37114e-008,0};
			up[] = {0,-0,1};
		};
		class phys6 {
			className = "a3\structures_f\walls\canal_wall_10m_f.p3d";
			pos[] = {16491.3,12797.5,10.8802};
			dir[] = {1,-4.37114e-008,0};
			up[] = {0,-0,1};
		};
		class phys7 {
			className = "a3\structures_f\walls\canal_wall_10m_f.p3d";
			pos[] = {16509.3,12797.2,11.773};
			dir[] = {-1,4.88762e-007,0};
			up[] = {0,0,1};
		};
	};

	class markers {
		class jail {
			pos[] = {16495.787109,12796.915039,0.000555992};
			shape = "ICON";
			type = "hd_dot";
			text = $STR_RPF_JAIL_JAIL;
		};
	};

};
