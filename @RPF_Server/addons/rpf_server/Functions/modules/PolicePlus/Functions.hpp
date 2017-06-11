		class PolicePlus
		{
			file = "RPF_Server\Functions\modules\PolicePlus";
			class initPolicePlus {};
		};

		class PolicePlusDB
		{
			file = "RPF_Server\Functions\modules\PolicePlus\Functions\database";
			class policePlusDBaddCrime {};
			class policePlusDBfetchCrimes {};
			class policePlusDBinit {};
			class policePlusDBmanage {};
			class policePlusDBmanageWanted {};
			class policePlusDBrun {};
		};
		
		class PolicePlusD
		{
			file = "RPF_Server\Functions\modules\PolicePlus\Functions\dispatch";
			class policePlusDassignTask {};
			class policePlusDfetchCars {};
			class policePlusDinit {};
			class policePlusDmanageCar {};
			class policePlusDmanageTask {};
			class policePlusDremoveDispatch {};
		};
