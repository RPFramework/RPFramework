class CfgFunctions
{
	class Client
	{
		class Init
		{
			file = "Functions\core\Init";
			class loadInventory {};
			class miscVariables {};
			class initHudLoop {};
			class initSurvivalLoop {};
			class receiveKeys {};
			class initModules {};
		};
		class Interaction
		{
			file = "Functions\core\Interaction";
			class interactionBack {};
			class openInteraction {};
			class interactionSub {};
		};
		class Misc
		{
			file = "Functions\core\Misc";
			class getMagazineName {};
			class getWeaponName {};
			class getVehicleName {};
			class hintMP {};
			class holster {};
			class nearMarker {};
			class playAnim {};
			class playSound {};
			class sortArray {};
			class useItem {};
			class eatItem {};
			class drinkItem {};
			class openUseItem {};
			class getMedics {};
			class getPolice {};
			class pickUp {};
			class switchDutyStatus {};
			class animateCtrl {};
		};
		class Money
		{
			file = "Functions\core\Money";
			class addBank {};
			class addCash {};
			class checkMoney {};
			class giveCash {};
			class giveCashSubmit {};
			class removeBank {};
			class removeCash {};
			class takeMoney {};
		};
		class Police
		{
			file = "Functions\core\Police";
			class cuff {};
			class cuffTarget {};
			class escort {};
			class escortStop {};
			class pullOut {};
			class putInCar {};
			class putInCarTarget {};
			class unCuff {};
			class unCuffTarget {};
			class search {};
		};
		
		class Trunk 
		{
			file = "Functions\core\Trunk";
			class openTrunk {};
			class storeTrunk {};
			class takeTrunk {};
		};
		class Vehicle
		{
			file = "Functions\core\Vehicle";
			class useKey {};
			class vehicleHitLoad {};
		};
	};
	class ClientModules
	{
		#include "Functions\modules\CONFIG\moduleFunctions.hpp"
	};
};