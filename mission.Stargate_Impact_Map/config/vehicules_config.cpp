
class stargate_vehicules 
{
    class vehicules_goauld
	{
		vehicules[] = { // id / nom / id arma / prix achat / prix location / level / type vehicule (0 = voiture civil, 1 = voiture armée, 2 = bateau, 3 = voiture gendarme)
            {1, $STR_Quad, "C_Quadbike_01_F", 50, 25, 0, 0},
            {2, $STR_Zodiak, "B_T_Boat_Transport_01_F", 1000, 500, 0, 2}
        };
	};
	class vehicules_tauri
	{
		vehicules[] = { // id / nom / id arma / prix achat / prix location / level / type vehicule (0 = voiture civil, 1 = voiture armée, 2 = bateau, 3 = voiture gendarme)
            {1, $STR_Quad, "C_Quadbike_01_F", 50, 25, 0, 0},
            {2, $STR_Pickup, "C_Offroad_default_F", 1000, 500, 0, 0}, 
            {3, $STR_4x4, "C_Offroad_02_unarmed_F", 2000, 500, 0, 0}, 
            {4, $STR_Prowler, "B_LSV_01_unarmed_black_F", 2000, 500, 50, 0},
            {5, $STR_Zodiak, "B_T_Boat_Transport_01_F", 1000, 500, 0, 2},
            {6, $STR_Hunter, "B_MRAP_01_F", 1000, 500, 0, 1},	
            {7, $STR_Prowler, "B_LSV_01_unarmed_F", 1000, 500, 0, 1},
            {8, $STR_Prowler_camo, "B_LSV_01_unarmed_F", 1000, 500, 0, 1},
            {9, $STR_van_transport_armee, "B_G_Van_02_transport_F", 1000, 500, 0, 1},	
            {10, $STR_Pickup_gendarmerie, "B_GEN_Offroad_01_gen_F", 1000, 500, 0, 3},
            {11, $STR_van_transport_gendarmerie, "B_GEN_Van_02_transport_F", 1000, 500, 0, 3}
        };
	};
    class bateaux_peche 
    {
        liste_id_bateaux_pour_peche[] = {"B_T_Boat_Transport_01_F"};
    };
};