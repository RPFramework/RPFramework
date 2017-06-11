class RPF_jailServerModule {
	// Where prisoners are released after their time
	jailReleaseLocation[] = {16505.0, 12790.0, 0.000555992};
	
	// This adds the jail walls, I exported this from the NeoArmageddon's Map Builder and again so that the framework would keep its modularity, I spawn them in a script. Objects are as classes and then they are in this array so the script can pick them up
	jailPhysicals[] = {
		"phys1",
		"phys2",
		"phys3",
		"phys4",
		"phys5",
		"phys6",
		"phys7",
	};
	
	class phys1 {
		className = "Land_Canal_Wall_10m_F";
		pos[] = {16495.541016,12801.587891,4.5};
		dir[] = {0,1,0};
		up[] = {0,0,1};
	};
	class phys2 {
		className = "Land_Canal_Wall_10m_F";
		pos[] = {16505.318359,12801.59668,4.5};
		dir[] = {0,1,0};
		up[] = {0,0,1};
	};
	class phys3 {
		className = "Land_Canal_Wall_10m_F";
		pos[] = {16495.144531,12792.863281,4.5};
		dir[] = {-8.74228e-008,-1,0};
		up[] = {-0,0,1};
	};
	class phys4 {
		className = "Land_Canal_Wall_10m_F";
		pos[] = {16505.0488281,12792.891602,4.5};
		dir[] = {-8.74228e-008,-1,0};
		up[] = {-0,0,1};
	};
	class phys5 {
		className = "Land_Canal_Wall_10m_F";
		pos[] = {16500.242188,12797.445313,4.5};
		dir[] = {1,-4.37114e-008,0};
		up[] = {0,-0,1};
	};
	class phys6 {
		className = "Land_Canal_Wall_10m_F";
		pos[] = {16491.279297,12797.490234,4.5};
		dir[] = {1,-4.37114e-008,0};
		up[] = {0,-0,1};
	};
	class phys7 {
		className = "Land_Canal_Wall_10m_F";
		pos[] = {16509.322266,12797.209961,4.5};
		dir[] = {-1,4.88762e-007,0};
		up[] = {0,0,1};
	};
	
	// Jail's marker(s)
	jailMarkers[] = {
		"marker1"
	};
	
	class marker1 {
		name = "jail";
		pos[] = {16495.787109,12796.915039,0.000555992};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_JAIL_JAIL;
	};
	
};