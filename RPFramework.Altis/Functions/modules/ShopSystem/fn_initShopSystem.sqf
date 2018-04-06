/*
Author: Kerkkoh
First Edit: 22.4.2016
*/


/*
----RPF_buyPhysicalShopStatements Documentation----
The RPF_buyPhysicalShopStatements array allows module makers to add code within buyPhysicalShop script when a vehicle/item/furniture is bought.
(Often you would want to execute specific code when a player buys one of these things)

The structure is the following
[
[{OurConditionToBeTrue},{OurStatements},2], //The last number is the code block where the code will be added (0- Vehicles ; 1- Items ; 2 - Furnitures)
[{not(isNil "checkVar")},{hint "We are good"},1]
]

Keep in mind that the executed code WILL have access to all local variables in the buyPhysicalShop script.
So,theoretically,it will be just like manually adding code to the buyPhysicalShop script.

Here's the local variables you might want to use:
_ct - Shop Object
_newfurn - Object you are trying to buy
*/
RPF_buyPhysicalShopStatements = [[],[],[]];
