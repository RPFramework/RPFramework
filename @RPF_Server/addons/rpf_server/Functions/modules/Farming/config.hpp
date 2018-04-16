class RPF_farmingServerModule {
	class plants {
		// Categorized by seed that is used to grow the plants
		// Models have to be unique!!!
		class RPF_Items_PoppySeed {
			modelPath = "a3\plants_f\bush";
			plantModel = "b_neriumo2s_f.p3d";
			initialDepth = -1.6;
			yield = "RPF_Items_Poppy";
		};
		class RPF_Items_OliveSeed {
			modelPath = "a3\plants_f\bush";
			plantModel = "b_ficusc2s_f.p3d";
			initialDepth = -1.4;
			yield = "RPF_Items_Olives";
		};
		class RPF_Items_CocaSeed {
			modelPath = "a3\plants_f\bush";
			plantModel = "b_ficusc1s_f.p3d";
			initialDepth = -1.6;
			yield = "RPF_Items_Cocaleaf";
		};
		class RPF_Items_WeedSeed {
			modelPath = "a3\plants_f\bush";
			plantModel = "b_neriumo2s_white_f.p3d";
			initialDepth = -1.6;
			yield = "RPF_Items_Weed";
		};
	};
	// Make sure this matches with the client config.hpp
	plantTypes[] = {
		"a3\plants_f\bush\b_neriumo2s_f.p3d",
		"a3\plants_f\bush\b_neriumo2s_white_f.p3d",
		"a3\plants_f\bush\b_ficusc2s_f.p3d",
		"a3\plants_f\bush\b_ficusc1s_f.p3d"
	};
	farmGroundTypes[] = {
		"#GdtStratisDryGrass",
		"#GdtStratisGreenGrass",
		"#GdtStratisForestPine",
		"#GdtStratisDirt",
		"#GdtDirt",
		"#GdtGrassGreen",
		"#GdtGrassDry",
		"#GdtSoil",
		"#GdtThorn",
		"#GdtMarsh",
		"#GdtVRsurface01"
	};
	// How long should it take for a plant to grow .2 up
	farmingSpeed = 60;
};