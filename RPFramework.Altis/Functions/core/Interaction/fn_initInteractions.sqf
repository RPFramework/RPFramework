/*
Author: Kerkkoh
First Edit: 16.4.2016

One subcategory should only have the amount of actions max as there are interaction buttons to avoid errors (including "Back" button).

*/
// The IDCs of the interaction buttons that are available in the menu. If you change up the  interaction menu, remember to change this.
RPF_InteractionButtons = [1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608];

/* 	These are subcategories nowadays, ["Action name", "['Category name'] call Client_fnc_interactionSub"]
	The category name needs to be unique and can be pre-localized or not.
	It needs to match with the category name in RPF_InteractionSubItems. See below
*/

RPF_InteractionMenuItems = [
	[
		localize 'STR_RPF_CORE_INTERACTION_CAT_OTHER', "['STR_RPF_CORE_INTERACTION_CAT_OTHER'] call Client_fnc_interactionSub"
	],
	[
		localize 'STR_RPF_CORE_INTERACTION_CAT_PLAYER', "['STR_RPF_CORE_INTERACTION_CAT_PLAYER'] call Client_fnc_interactionSub"
	],
	[
		localize 'STR_RPF_CORE_INTERACTION_CAT_VEHICLES', "['STR_RPF_CORE_INTERACTION_CAT_VEHICLES'] call Client_fnc_interactionSub"
	],
	[
		localize 'STR_RPF_CORE_INTERACTION_CAT_INTERACTION', "['STR_RPF_CORE_INTERACTION_CAT_INTERACTION'] call Client_fnc_interactionSub"
	]
];

/*

Consists of subcategories that are arrays inside of this one: 
[
	"Category name",  //< This is the unique name we defined above.
	[
		// Array of interaction items as you already know them
		[
			[Array of conditions that need to all be TRUE for the item to show],
			["Action name in the menu", "code that will be call compiled when the item is pressed"]
		]
	]
]

*/

RPF_InteractionSubItems = [
	[
		localize 'STR_RPF_CORE_INTERACTION_CAT_VEHICLES',
		[
			[
				["true"],
				[format["< %1", localize 'STR_RPF_CORE_INTERACTION_BACK'], "[] call Client_fnc_interactionBack"]
			],
			[
				["cursorObject isKindOf 'Car'", "(cursorObject getVariable ['key', 'nuh']) in RPF_vehKeys", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_CARKEY'), "[cursorObject] call Client_fnc_useKey"]
			],
			[
				["(vehicle player) != player", "((vehicle player) getVariable ['key', 'nuh']) in RPF_vehKeys"],
				[(localize 'STR_RPF_CORE_INTERACTION_CARKEY'), "[vehicle player] call Client_fnc_useKey"]
			],
			[
				["(cursorObject isKindOf 'Car') || (cursorObject isKindOf 'Air') || (cursorObject isKindOf 'Ship')", "(player distance cursorObject) <= 5", "(locked cursorObject) == 0"],
				[(localize 'STR_RPF_CORE_INTERACTION_TRUNK'), "[cursorObject] call Client_fnc_openTrunk"]
			]
		]
	],
	[
		localize 'STR_RPF_CORE_INTERACTION_CAT_PLAYER',
		[
			[
				["true"],
				[format["< %1", localize 'STR_RPF_CORE_INTERACTION_BACK'], "[] call Client_fnc_interactionBack"]
			],
			[
				["isPlayer cursorObject", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_GIVECASH'), "[cursorObject] call Client_fnc_giveCash"]
			],
			[
				["(((missionConfigFile >> 'RPF_Config' >> 'handcuffs_item') call BIS_fnc_getCfgData) in (items player)) || (((missionConfigFile >> 'RPF_Config' >> 'handcuffs_item') call BIS_fnc_getCfgData) in (magazines player))", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_CUFF'), "[cursorObject] spawn Client_fnc_cuff"]
			],
			[
				["(((missionConfigFile >> 'RPF_Config' >> 'handcuffKeys_item') call BIS_fnc_getCfgData) in (items player)) || (((missionConfigFile >> 'RPF_Config' >> 'handcuffKeys_item') call BIS_fnc_getCfgData) in (magazines player))", "isPlayer cursorObject", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_OPENCUFFS'), "[cursorObject] call Client_fnc_unCuff"]
			],
			[
				["(count (attachedObjects player)) <= 0", "isPlayer cursorObject", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_ESCORT'), "[cursorObject] call Client_fnc_escort"]
			],
			[
				["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'"],
				[(localize 'STR_RPF_CORE_INTERACTION_LETGO'), "[] call Client_fnc_escortStop"]
			],
			[
				["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_FORCEINCAR'), "[cursorObject] call Client_fnc_putInCar"]
			],
			[
				["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_PULLOUT'), "[cursorObject] call Client_fnc_pullOut"]
			],
			[
				["player getVariable ['cop', 0] > 0", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_SEARCH'), "[cursorObject] call Client_fnc_search"]
			]
		]
	],
	[
		
		localize 'STR_RPF_CORE_INTERACTION_CAT_INTERACTION',
		[
			[
				["true"],
				[format["< %1", localize 'STR_RPF_CORE_INTERACTION_BACK'], "[] call Client_fnc_interactionBack"]
			],
			[
				["(count (attachedObjects player)) <= 0", "cursorObject in RPF_ownedFurniture", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_PICKUP'), "[cursorObject] call Client_fnc_pickUp"]
			],
			[
				["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) in RPF_ownedFurniture"],
				[(localize 'STR_RPF_CORE_INTERACTION_LETGO'), "[] call Client_fnc_escortStop"]
			]
		]
	],
	[
		localize 'STR_RPF_CORE_INTERACTION_CAT_OTHER',
		[
			[
				["true"],
				[format["< %1", localize 'STR_RPF_CORE_INTERACTION_BACK'], "[] call Client_fnc_interactionBack"]
			],
			[
				["alive player"],
				[(localize 'STR_RPF_CORE_INTERACTION_USEITEM'), "[] call Client_fnc_openUseItem"]
			],
			[
				["!(isNil {cursorObject getVariable 'money'})", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_TAKEMONEY'), "[cursorObject] call Client_fnc_takeMoney"]
			],
			[
				["player getVariable ['copoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_GOONDUTY'), "[1, 0] call Client_fnc_switchDutyStatus"]
			],
			[
				["player getVariable ['emsoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_GOONDUTY'), "[1, 1] call Client_fnc_switchDutyStatus"]
			],
			[
				["player getVariable ['cop', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_GOOFFDUTY'), "[0, 0] call Client_fnc_switchDutyStatus"]
			],
			[
				["player getVariable ['ems', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 5"],
				[(localize 'STR_RPF_CORE_INTERACTION_GOOFFDUTY'), "[0, 1] call Client_fnc_switchDutyStatus"]
			]
		]
	]
];
