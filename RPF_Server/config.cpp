class CfgPatches
{
	class rpf_server
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
	};
};

class RPF_serverConfig {
	// 1 (true) if we use a loop to constantly save player data
	statSaveLoop = 1;
	// How often it should loop in seconds
	statSaveLoopTime = 300;
};

#include "Functions\modules\CONFIG\moduleConfigs.hpp"

class CfgFunctions
{
	class Server
	{
		class Save
		{
			file = "rpf_server\Functions\core\Save";
			class handleDisconnect {};
            class initStats {};
            class statSave {};
            class statSaveLoop {};
            class phoneNumber {};
		};
		class Money
		{
			file = "rpf_server\Functions\core\Money";
			class replicateMoney {};
			class confirmMoney {};
		};
	};
	class ExternalS
	{
		class ExtDB
		{
			file = "rpf_server\External\ExtDB";
			class ExtDBasync {};
      class ExtDBinit {};
			class ExtDBstrip {};
			class ExtDBquery {};
			class DBSetup {preinit=1};
		};
	};
	class ServerModules
	{
		class Config
		{
			file = "rpf_server\Functions\modules\CONFIG";
			class initModules {};
			class firstLogin {};
		};
		#include "Functions\modules\CONFIG\moduleFunctions.hpp"
	};
};
