
class stargate_items
{
	class items
    {
        /* 
            { 
                id / level / nom / lien image / type objets / poid / is militaire (1 = militaire, 0 = pas militaire) / prix / 
                is tauri (1 = tauri, 0 = pas tauri, 2 = tauri + gouald) / speciale / is illégal (1 = illégal, 0 = pas illégal)
                |-> pour speciale :
                    |-> si nourriture ou boisson ou raisin ou viande cuite ou poisson cuit -> valeur que ca te rend (en %)
                    |-> si medicament ou blessure -> partie du corp (0 = tout corp / 1 = tete / 2 = ventre / 3 = tete et ventre / 4 = bras / 5 = jambes)
            }
        */ 
        /*  
            Type Objets :
            |-> nouriture --> 1
            |-> boissons --> 2
            |-> blessure --> 3
            |-> medicaments --> 4    
            |-> systeme gourde --> 5     
            |-> fruits et legumes traités (raisin) --> 6
            |-> fruits et legumes sales --> 6.5
            |-> objet outil --> 7
            |-> viande crue --> 8
            |-> viande cuite --> 9
            |-> poisson cru --> 10
            |-> poisson cuit --> 11
            |-> drogue sale --> 12
            |-> drogue propre --> 13
        */
        tableau_items[] = {
			{1, 0, $STR_bouteille, "pictures\items\bouteille.paa", 2, 1.5, 0, 10, 1, 30, 0},
            {2, 15, $STR_gourde, "pictures\items\gourde.paa", 5, 3, 1, 70, 1, 50, 0},
            {3, 15, $STR_micropur, "pictures\items\micropur.paa", 5, 0.5, 0, 25, 1, 0, 0},
            {4, 15, $STR_ration, "pictures\items\ration.paa", 1, 1, 1, 50, 1, 30, 0},
            {5, 0, $STR_sandwich, "pictures\items\sandwich.paa", 1, 1, 0, 8, 1, 30, 0},
            {6, 0, $STR_bandage, "pictures\items\bandage.paa", 3, 0.5, 0, 15, 1, 0, 0},
            {7, 0, $STR_aspirine, "pictures\items\aspirine.paa", 4, 0.5, 0, 10, 1, 1, 0},
            {8, 0, $STR_smecta, "pictures\items\smecta.paa", 4, 0.5, 0, 8, 1, 2, 0},
            {14, 0, $STR_raisin, "pictures\items\raisin_baselvl0_20.paa", 6, 0.5, 0, 5, 0, 20, 0},
            {15, 20, $STR_raisin, "pictures\items\raisin_mediocrelvl20_40.paa", 6, 0.5, 0, 45, 0, 40, 0},
            {16, 40, $STR_raisin, "pictures\items\raisin_superieurlvl40_60.paa", 6, 0.5, 0, 75, 0, 60, 0},
            {17, 0, "tabregol", "pictures\items\potion_verte.paa", 4, 0.5, 0, 10, 0, 1, 0},
            {18, 0, "try'rid", "pictures\items\potion_rouge.paa", 4, 0.5, 0, 15, 0, 2, 0},
            {19, 0, "vuhran", "pictures\items\cataplasme-bleu.paa", 3, 0.5, 0, 8, 0, 3, 0},
            {20, 0, "shorkoak", "pictures\items\cataplasme-noir.paa", 3, 0.5, 0, 12, 0, 4, 0},
            {21, 0, "ocysed", "pictures\items\cataplasme-rouge.paa", 3, 0.5, 0, 17, 0, 5, 0},
            {22, 0, $STR_mouton_cru, "pictures\items\viande\raw_mouton.paa", 8, 1, 0, 5, 2, 15, 0},
            {23, 0, $STR_mouton_cuit, "pictures\items\viande\raw_mouton.paa", 9, 0.5, 0, 5, 2, 30, 0},
            {24, 0, $STR_chevre_crue, "pictures\items\viande\raw_chevre.paa", 8, 1, 0, 3, 2, 10, 0},
            {25, 0, $STR_chevre_cuite, "pictures\items\viande\raw_chevre.paa", 9, 0.5, 0, 5, 2, 20, 0},
            {26, 0, $STR_poule_crue, "pictures\items\viande\raw_cock.paa", 8, 1, 0, 2, 2, 8, 0},
            {27, 0, $STR_poule_cuite, "pictures\items\viande\raw_cock.paa", 9, 0.5, 0, 4, 2, 15, 0},
            {28, 0, $STR_lapin_cru, "pictures\items\viande\raw_hen.paa", 8, 1, 0, 1, 2, 5, 0},
            {29, 0, $STR_lapin_cuit, "pictures\items\viande\raw_hen.paa", 9, 0.5, 0, 3, 2, 10, 0},
            {30, 0, $STR_couteau, "pictures\items\couteaux\couteau_taury.paa", 7, 3, 0, 15, 1, 0, 0},
            {31, 0, $STR_couteau, "pictures\items\couteaux\couteau_goauld.paa", 7, 3, 0, 15, 0, 0, 0}, 
            {32, 0, $STR_symbiote, "pictures\items\poissons\symbiote.paa", 10, 2, 0, 12, 2, 0, 0},
            {33, 0, $STR_maquereau_cru, "pictures\items\poissons\maquereau.paa", 10, 1, 0, 6, 2, 10, 0},
            {34, 0, $STR_maquereau_cuit, "pictures\items\poissons\maquereau.paa", 11, 0.5, 0, 8, 2, 35, 0},
            {35, 0, $STR_mullet_cru, "pictures\items\poissons\mullet.paa", 10, 1, 0, 5, 2, 8, 0},
            {36, 0, $STR_mullet_cuit, "pictures\items\poissons\mullet.paa", 11, 0.5, 0, 7, 2, 30, 0},
            {37, 0, $STR_ornate_cru, "pictures\items\poissons\ornate.paa", 10, 1, 0, 4, 2, 5, 0},
            {38, 0, $STR_ornate_cuit, "pictures\items\poissons\ornate.paa", 11, 0.5, 0, 7, 2, 25, 0},
            {39, 0, $STR_poisson_chat_cru, "pictures\items\poissons\poisson_chat.paa", 10, 1, 0, 1, 2, 5, 0},
            {40, 0, $STR_poisson_chat_cuit, "pictures\items\poissons\poisson_chat.paa", 11, 0.5, 0, 3, 2, 15, 0},
            {41, 0, $STR_salema_cru, "pictures\items\poissons\salema.paa", 10, 1, 0, 2, 2, 6, 0},
            {42, 0, $STR_salema_cuit, "pictures\items\poissons\salema.paa", 11, 0.5, 0, 4, 2, 20, 0},
            {43, 0, $STR_thon_cru, "pictures\items\poissons\thon.paa", 10, 1, 0, 3, 2, 7, 0},
            {44, 0, $STR_thon_cuit, "pictures\items\poissons\thon.paa", 11, 0.5, 0, 6, 2, 25, 0},
            {47, 0, $STR_pomme, "pictures\items\fruits\SGI_pomme_co.paa", 6, 0.5, 0, 10, 1, 20, 0},
            {46, 0, $STR_peche, "pictures\items\fruits\SGI_peche_co.paa", 6, 0.5, 0, 20, 1, 40, 0},
            {45, 0, $STR_fraise, "pictures\items\fruits\SGI_fraise_co.paa", 6, 0.5, 0, 30, 1, 60, 0},
            {48, 0, $STR_kassa_sale, "pictures\items\illegal\mais.paa", 12, 0.5, 0, 45, 2, 40, 1},
            {49, 0, $STR_kassa_sale, "pictures\items\illegal\Kassa_mediocre.paa", 12, 0.5, 0, 75, 2, 0, 1},
            {50, 0, $STR_kassa_sale, "pictures\items\illegal\Kassa_superieur.paa", 12, 0.5, 0, 75, 2, 0, 1},
            {51, 10, $STR_kassa_pure, "pictures\items\illegal\mais.paa", 13, 0.5, 0, 45, 2, 0, 1},
            {52, 20, $STR_kassa_pure, "pictures\items\illegal\Kassa_mediocre.paa", 13, 0.5, 0, 75, 2, 0, 1},
            {53, 30, $STR_kassa_pure, "pictures\items\illegal\Kassa_superieur.paa", 13, 0.5, 0, 75, 2, 0, 1},
            {54, 20, $STR_ble_sale, "", 6.5, 0.5, 0, 75, 2, 0, 1},
            {55, 30, $STR_ble_traiter, "", 6, 0.5, 0, 75, 2, 0, 1}
		};
	};
    class loadout_tauri
    {
        uniformClass = "U_C_Man_casual_1_F";
        backpack = "";
        linkedItems[] = { "ItemCompass", "ItemWatch", "ItemRadio" };
        weapons[] = {};
        items[] = {};
        magazines[] = {};
    };
    class loadout_goauld
    {
        uniformClass = "sga_jaffa_free";
        backpack = "";
        linkedItems[] = { "ItemCompass", "ItemRadio" };
        weapons[] = {};
        items[] = {};
        magazines[] = {};
    };
};
