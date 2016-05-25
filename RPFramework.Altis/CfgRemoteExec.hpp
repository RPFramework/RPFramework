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

        /* Server functions */
        Function(Server_fnc_initStats,SERVER)

        /* Anyone functions */
        Function(Client_fnc_playSound,ANYONE)
		
		#include "Functions\modules\CONFIG\moduleRemoteFunctions.hpp"
    };

    class Commands {
        mode = 1;
        jip = 0;

        Function(setFuel,ANYONE)
    };
};