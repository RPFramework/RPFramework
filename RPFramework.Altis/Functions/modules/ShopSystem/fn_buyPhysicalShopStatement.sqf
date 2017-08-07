/*
    File : fn_buyPhysicalShopStatement.sqf
    Module: ShopSystem
    Environment: Scheduled
    Author: Dardo
    Description:
    Add statements to the buyPhysicalShop script    
			
    Arguments:
        1 - Condition <Code>
        2 - Statement to execute <Code>
*/
params [["_condition",{},[{}]],["_code",{},[{}]]];

uiSleep 5;
if (isNil "RPF_buyPhysicalShopStatements") exitWith {};
RPF_buyPhysicalShopStatements pushBack [
_condition, //Condition <Code>
_code //Statement to execute <Code>
];

