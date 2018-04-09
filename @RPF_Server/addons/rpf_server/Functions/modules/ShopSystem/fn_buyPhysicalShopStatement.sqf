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
        3 - In which block should the code get executed? <Int>
            0 - Vehicle Buy
            1 - Item Buy
            2 - Furniture Buy
*/
params [["_condition",{},[{}]],["_code",{},[{}]],["_codeblock",0,[0]]];

if (isNil "RPF_buyPhysicalShopStatements") exitWith {};

(RPF_buyPhysicalShopStatements select _codeblock) pushBack [
	_condition, //Condition <Code>
	_code //Statement to execute <Code>
];

