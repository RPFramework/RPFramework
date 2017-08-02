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
		};
		class Interaction
		{
			file = "Functions\core\Interaction";
			class initInteractions {};
			class interactionAction {};
			class openInteraction {};
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
		class Vehicle
		{
			file = "Functions\core\Vehicle";
			class useKey {};
			class vehicleHitGet {};
			class vehicleHitLoad {};
			class openTrunk {};
			class storeTrunk {};
			class takeTrunk {};
		};
	};
	class ClientModules
	{
		class Config
		{
			file = "Functions\modules\CONFIG";
			class initModules {};
		};
		#include "Functions\modules\CONFIG\moduleFunctions.hpp"
	};
};