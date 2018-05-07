#define Function(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
};

#define ANYONE 0
#define CLIENT 1
#define SERVER 2

class CfgRemoteExec {
    class Functions {
        mode = 1;
        jip = 0;

        /* Client functions */
				Function(Client_fnc_loadInventory,CLIENT)
				Function(Client_fnc_hintMP,CLIENT)
				Function(Client_fnc_addBank,CLIENT)
				Function(Client_fnc_addCash,CLIENT)
				Function(Client_fnc_cuffTarget,CLIENT)
				Function(Client_fnc_putInCarTarget,CLIENT)
				Function(Client_fnc_unCuffTarget,CLIENT)
				Function(Client_fnc_receiveGarage,CLIENT)
				Function(Client_fnc_receiveKeys,CLIENT)

				/* Server functions */
				Function(Server_fnc_initStats,SERVER)
				Function(Server_fnc_replicateMoney,SERVER)
				Function(Server_fnc_confirmMoney,SERVER)
				Function(Server_fnc_statSave,SERVER)
				Function(Server_fnc_insertKey,SERVER)
				Function(Server_fnc_deleteKey,SERVER)
				Function(Server_fnc_deleteKeys,SERVER)
				Function(Server_fnc_setupVehiclesKilledHandlers,SERVER)

        /* Anyone functions */
        Function(Client_fnc_playSound,ANYONE)

		#include "Functions\modules\CONFIG\moduleRemoteFunctions.hpp"
		/*
		Don't uncomment these unless you're in a testing environment
        Function(bis_fnc_execvm,ANYONE)
        Function(bis_fnc_debugconsoleexec,ANYONE)*/
    };

    class Commands {
        mode = 1;
        jip = 0;

        Function(setFuel,ANYONE)
        Function(setOwner,ANYONE)
        /*
		Don't uncomment these unless you're in a testing environment
				Function(spawn,ANYONE)
				Function(call,ANYONE)
				Function(execVM,ANYONE)*/
    };
};
