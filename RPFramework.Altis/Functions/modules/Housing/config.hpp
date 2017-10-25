class RPF_housingModule {
    
    
    
    /*
    
        Below you'll find the classes for specifying properties of a specific kind of houses.
        Remove houses from the houseTypes[] array if you want to make them unbuyable by players.
        For now supported properties are:
        - price <Int>
        - trunksize <Int>
        - containerClass <String>
    */
    
      class Houses {
            class RPF_House_Main {
                price = 20000;
                trunksize = 20;
                containerClass = "I_CargoNet_01_ammo_F";
            };
            class Land_Offices_01_V1_F : RPF_House_Main {
                price = 100000;
            };

            class Land_i_Addon_02_V1_F : RPF_House_Main {
                price = 10000;
            };

            class Land_i_Garage_V1_F : RPF_House_Main {
                price = 10000;
            };

            class Land_i_Garage_V2_F : Land_i_Garage_V1_F {
                
            };

            class Land_i_House_Big_01_V1_F : RPF_House_Main {
                price = 100000;
            };

            class Land_i_House_Big_01_V2_F : Land_i_House_Big_01_V1_F {
                
            };

            class Land_i_House_Big_01_V3_F : Land_i_House_Big_01_V1_F {
                
            };

            class Land_i_House_Big_01_V1_dam_F : RPF_House_Main {
                price = 50000;
            };

            class Land_i_House_Big_01_V2_dam_F : Land_i_House_Big_01_V1_dam_F {
                
            };

            class Land_i_House_Big_01_V3_dam_F : Land_i_House_Big_01_V1_dam_F {
                
            };
            
            class Land_i_House_Big_02_V1_F : RPF_House_Main {
                price = 100000;
            };
            
            class Land_i_House_Big_02_V2_F : Land_i_House_Big_02_V1_F {
                
            };

            class Land_i_House_Big_02_V3_F : Land_i_House_Big_02_V1_F {
                
            };

            class Land_i_House_Big_02_V1_dam_F : RPF_House_Main {
                price = 50000;
            };

            class Land_i_House_Big_02_V2_dam_F : Land_i_House_Big_02_V1_dam_F {
                
            };

            class Land_i_House_Big_02_V3_dam_F : Land_i_House_Big_02_V1_dam_F {
                
            };

            class Land_i_Shop_01_V1_F : RPF_House_Main {
                price = 100000;
            };

            class Land_i_Shop_01_V2_F : Land_i_Shop_01_V1_F {
                
            };

            class Land_i_Shop_01_V3_F : Land_i_Shop_01_V1_F {
                
            };

            class Land_i_Shop_01_V1_dam_F : RPF_House_Main {
                price = 100000;
                
            };

            class Land_i_Shop_01_V2_dam_F : Land_i_Shop_01_V1_dam_F {
                
            };

            class Land_i_Shop_01_V3_dam_F : Land_i_Shop_01_V1_dam_F{
                
            };

            class Land_i_Shop_02_V1_F : RPF_House_Main {
                price = 100000;
            };

            class Land_i_Shop_02_V2_F : Land_i_Shop_01_V1_dam_F {
                
            };

            class Land_i_Shop_02_V3_F : Land_i_Shop_01_V1_dam_F {
                
            };

            class Land_i_Shop_02_V1_dam_F : RPF_House_Main {
                price = 50000;
                
            };

            class Land_i_Shop_02_V2_dam_F : Land_i_Shop_02_V1_dam_F {
                
            };

            class Land_i_Shop_02_V3_dam_F : Land_i_Shop_02_V1_dam_F {
                
            };

            class Land_i_House_Small_01_V1_F : RPF_House_Main {
                price = 50000;
            };

            class Land_i_House_Small_01_V2_F : Land_i_House_Small_01_V1_F {
                
            };

            class Land_i_House_Small_01_V3_F : Land_i_House_Small_01_V1_F {
                
            };

            class Land_i_House_Small_01_V1_dam_F : RPF_House_Main {
                price = 25000;
            };

            class Land_i_House_Small_01_V2_dam_F : Land_i_House_Small_01_V1_dam_F {
                
            };

            class Land_i_House_Small_01_V3_dam_F : Land_i_House_Small_01_V1_dam_F {
                
            };

            class Land_i_House_Small_02_V1_F : RPF_House_Main {
                price = 50000;
            };

            class Land_i_House_Small_02_V2_F : Land_i_House_Small_02_V1_F {
                
            };

            class Land_i_House_Small_02_V3_F : Land_i_House_Small_02_V1_F {
                
            };

            class Land_i_House_Small_02_V1_dam_F : RPF_House_Main  {
                price = 25000;
            };

            class Land_i_House_Small_02_V2_dam_F : Land_i_House_Small_02_V1_dam_F {
                
            };

            class Land_i_House_Small_02_V3_dam_F : Land_i_House_Small_02_V1_dam_F {
                
            };

            class Land_i_House_Small_03_V1_F : RPF_House_Main {
                price = 50000;
                
            };

            class Land_i_House_Small_03_V1_dam_F : RPF_House_Main {
                price = 25000;
            };

            class Land_cargo_house_slum_F : RPF_House_Main {
                price = 5000;
            };

            class Land_Slum_House01_F : RPF_House_Main {
                price = 5000;
            };

            class Land_Slum_House02_F : Land_Slum_House01_F {
                
            };

            class Land_Slum_House03_F : Land_Slum_House01_F {
                
            };

            class Land_i_Stone_Shed_V1_F : RPF_House_Main {
                price = 20000;
            };

            class Land_i_Stone_Shed_V2_F : Land_i_Stone_Shed_V1_F {
                
            };

            class Land_i_Stone_Shed_V3_F : Land_i_Stone_Shed_V1_F {
                
            };

            class Land_i_Stone_HouseSmall_V1_F : RPF_House_Main {
                price = 100000;
            };

            class Land_i_Stone_HouseSmall_V2_F : Land_i_Stone_HouseSmall_V1_F {
                
            };

            class Land_i_Stone_HouseSmall_V3_F : Land_i_Stone_HouseSmall_V1_F {
                
            };

            class Land_i_Stone_HouseSmall_V1_dam_F : RPF_House_Main {
                price = 100000;
            };

            class Land_i_Stone_HouseSmall_V2_dam_F : Land_i_Stone_HouseSmall_V1_dam_F {
                
            };

            class Land_i_Stone_HouseSmall_V3_dam_F : Land_i_Stone_HouseSmall_V1_dam_F {
                
            };

            class Land_cmp_Shed_F : RPF_House_Main {
                price = 20000;
            };

            class Land_FuelStation_Build_F : RPF_House_Main {
                price = 100000;
            };

            class Land_i_Shed_Ind_F : RPF_House_Main {
                price = 100000;
            };

            class Land_d_Windmill01_F : RPF_House_Main {
                price = 100000;
            };

            class Land_Cargo_House_V1_F : RPF_House_Main {
                price = 20000;
            };

            class Land_Cargo_House_V2_F : Land_Cargo_House_V1_F {
            };

            class Land_Cargo_House_V3_F : Land_Cargo_House_V1_F {
            };

            class Land_MilOffices_V1_F : RPF_House_Main {
                price = 100000;
            };

            class Land_Kiosk_blueking_F : RPF_House_Main {
                price = 25000;
            };

            class Land_Kiosk_gyros_F : Land_Kiosk_blueking_F {
            };

            class Land_Kiosk_papers_F : Land_Kiosk_blueking_F {
                
            };

            class Land_Kiosk_redburger_F : Land_Kiosk_blueking_F {
                
            };


            class Land_LightHouse_F : RPF_House_Main {
                price = 50000;
            };

            class Land_Hangar_F : RPF_House_Main {
                price = 150000;
            };
    };
    
    houseTypes[] = {
        "Land_Offices_01_V1_F",
        "Land_i_Addon_02_V1_F",
        "Land_i_Garage_V1_F",
        "Land_i_Garage_V2_F",
        "Land_i_House_Big_01_V1_F",
        "Land_i_House_Big_01_V2_F",
        "Land_i_House_Big_01_V3_F",
        "Land_i_House_Big_01_V1_dam_F",
        "Land_i_House_Big_01_V2_dam_F",
        "Land_i_House_Big_01_V3_dam_F",
        "Land_i_House_Big_02_V1_F",
        "Land_i_House_Big_02_V2_F",
        "Land_i_House_Big_02_V3_F",
        "Land_i_House_Big_02_V1_dam_F",
        "Land_i_House_Big_02_V2_dam_F",
        "Land_i_House_Big_02_V3_dam_F",
        "Land_i_Shop_01_V1_F",
        "Land_i_Shop_01_V2_F",
        "Land_i_Shop_01_V3_F",
        "Land_i_Shop_01_V1_dam_F",
        "Land_i_Shop_01_V2_dam_F",
        "Land_i_Shop_01_V3_dam_F",
        "Land_i_Shop_02_V1_F",
        "Land_i_Shop_02_V2_F",
        "Land_i_Shop_02_V3_F",
        "Land_i_Shop_02_V1_dam_F",
        "Land_i_Shop_02_V2_dam_F",
        "Land_i_Shop_02_V3_dam_F",
        "Land_i_House_Small_01_V1_F",
        "Land_i_House_Small_01_V2_F",
        "Land_i_House_Small_01_V3_F",
        "Land_i_House_Small_01_V1_dam_F",
        "Land_i_House_Small_01_V2_dam_F",
        "Land_i_House_Small_01_V3_dam_F",
        "Land_i_House_Small_02_V1_F",
        "Land_i_House_Small_02_V2_F",
        "Land_i_House_Small_02_V3_F",
        "Land_i_House_Small_02_V1_dam_F",
        "Land_i_House_Small_02_V2_dam_F",
        "Land_i_House_Small_02_V3_dam_F",
        "Land_i_House_Small_03_V1_F",
        "Land_i_House_Small_03_V1_dam_F",
        "Land_cargo_house_slum_F",
        "Land_Slum_House01_F",
        "Land_Slum_House02_F",
        "Land_Slum_House03_F",
        "Land_i_Stone_Shed_V1_F",
        "Land_i_Stone_Shed_V2_F",
        "Land_i_Stone_Shed_V3_F",
        "Land_i_Stone_HouseSmall_V1_F",
        "Land_i_Stone_HouseSmall_V2_F",
        "Land_i_Stone_HouseSmall_V3_F",
        "Land_i_Stone_HouseSmall_V1_dam_F",
        "Land_i_Stone_HouseSmall_V2_dam_F",
        "Land_i_Stone_HouseSmall_V3_dam_F",
        "Land_cmp_Shed_F",
        "Land_FuelStation_Build_F",
        "Land_i_Shed_Ind_F",
        "Land_d_Windmill01_F",
        "Land_Cargo_House_V1_F",
        "Land_Cargo_House_V2_F",
        "Land_Cargo_House_V3_F",
        "Land_MilOffices_V1_F",
        "Land_Kiosk_blueking_F",
        "Land_Kiosk_gyros_F",
        "Land_Kiosk_papers_F",
        "Land_Kiosk_redburger_F",
        "Land_LightHouse_F",
        "Land_Hangar_F"
    };
};