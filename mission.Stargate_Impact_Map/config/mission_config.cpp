
class stargate
{
	class coordonnees_spawn
    {
		spawn_goauld[] = {38894.375, 38926.156, 0.5}; // biome goauld
        spawn_tauri[] = {38144.555, 3127.349, 0.5}; // biome tauri
	};
	class prisons
    {
		prison_goauld[] = {36904.535, 3179.304, 0.5}; // prison goauld
        prison_tauri[] = {36950.266, 3178.416, 0.5}; // prison tauri

		prison_goauld_id = "prison_goauld"; // marker prison goauld
        prison_tauri_id = "prison_tauri"; // marker prison tauri

		temp_prison = 300; // tps en secondes
	};
	class licences
	{
		// id / text / image / isAchetable / isSupprimable / prix / level
		licences_tableau[] = {
			{1, $STR_Permis_Conduire, "pictures\licences\SGI_licence_permis_co.paa", 1, 1, 50, 0},
			{2, $STR_Port_Arme, "pictures\licences\SGI_licence_armecivil_co.paa", 1, 0, 50, 0},
			{3, $STR_Prisonnier, "", 0, 1, 0, 0},
			{4, $STR_Permis_Peche, "", 1, 0, 50, 0},
			{5, $STR_Permis_Chasse, "", 1, 0, 50, 0},
			{6, $STR_Permis_traitement_kassa, "", 1, 1, 50, 10},
			{7, $STR_Permis_recolte_ble, "", 1, 1, 50, 10},
			{8, $STR_Permis_traitement_ble, "", 1, 1, 50, 10},
			{9, $STR_Permis_Bateau, "pictures\licences\SGI_licence_permis_co.paa", 1, 1, 50, 0}
		};
	};
	class chasse
	{
		zones[] = { // id de zone / nb d'annimaux
			{"zone_chasse_1", 30},
			{"zone_chasse_2", 20}
		};
	};
	class peche
	{
		// [id zone 1, id zone 2]
		zones[] = {"zone_peche_1", "zone_peche_2"};
	};
	class recolte
	{
		zones_recolte[] = { // [id zone, level acces de zone, id item gagné, is goauld ou tauri (0 goauld, 1 tauri, 2 tauri et goauld), text stringtable (text addAction), text stringtable (text recolte)]
			{"zone_pommes", 0, 47, 1, $STR_recolte_pomme, $STR_recolte_pomme_bis}, 
			{"zone_peches", 3, 46, 1, $STR_recolte_peches, $STR_recolte_peches_bis}, 
			{"zone_fraises", 5, 45, 1, $STR_recolte_fraises, $STR_recolte_fraises_bis}, 
			{"zone_raisin1", 0, 14, 0, $STR_recolte_raisin1, $STR_recolte_raisin1_bis}, 
			{"zone_raisin2", 3, 15, 0, $STR_recolte_raisin2, $STR_recolte_raisin2_bis}, 
			{"zone_raisin3", 5, 16, 0, $STR_recolte_raisin3, $STR_recolte_raisin3_bis},
			{"zone_kassa1", 10, 48, 2, $STR_recolte_kassa1, $STR_recolte_kassa1_bis}, 
			{"zone_kassa2", 20, 49, 2, $STR_recolte_kassa2, $STR_recolte_kassa2_bis}, 
			{"zone_kassa3", 30, 50, 2, $STR_recolte_kassa3, $STR_recolte_kassa3_bis}, 
			{"zone_ble_tauri", 10, 54, 1, $STR_recolte_ble, $STR_recolte_ble_bis},
			{"zone_ble_goauld", 10, 54, 0, $STR_recolte_ble, $STR_recolte_ble_bis}
		};
	};
	class traitement
	{
		pts_traitement[] = { // [id zone, level acces de zone, id item avant traitement, id item aprés traitement, is goauld ou tauri (0 goauld, 1 tauri, 2 tauri et goauld), text stringtable (text addAction), text stringtable (text traitement), text stringtable (text traiter), has licence (1 si vrai et 0 si faux), num licence, text stringtable (text pas licence)]
			{"traitement_kassa_goauld", 0, 48, 51, 0, $STR_kassa1_traitement_add_action, $STR_kassa_traitement, $STR_kassa_traiter, 1, 6, $STR_kassa_traitement_impossible_sans_licence}, 
			{"traitement_kassa_goauld", 0, 49, 52, 0, $STR_kassa2_traitement_add_action, $STR_kassa_traitement, $STR_kassa_traiter, 1, 6, $STR_kassa_traitement_impossible_sans_licence},
			{"traitement_kassa_goauld", 0, 50, 53, 0, $STR_kassa3_traitement_add_action, $STR_kassa_traitement, $STR_kassa_traiter, 1, 6, $STR_kassa_traitement_impossible_sans_licence},
			{"traitement_kassa_tauri", 3, 48, 51, 1, $STR_kassa1_traitement_add_action, $STR_kassa_traitement, $STR_kassa_traiter, 1, 6, $STR_kassa_traitement_impossible_sans_licence},
			{"traitement_kassa_tauri", 3, 49, 52, 1, $STR_kassa2_traitement_add_action, $STR_kassa_traitement, $STR_kassa_traiter, 1, 6, $STR_kassa_traitement_impossible_sans_licence},
			{"traitement_kassa_tauri", 3, 50, 53, 1, $STR_kassa3_traitement_add_action, $STR_kassa_traitement, $STR_kassa_traiter, 1, 6, $STR_kassa_traitement_impossible_sans_licence},
			{"traitement_kassa_tauri", 3, 50, 53, 1, $STR_kassa3_traitement_add_action, $STR_kassa_traitement, $STR_kassa_traiter, 1, 6, $STR_kassa_traitement_impossible_sans_licence},
			{"traitement_ble_goauld", 10, 54, 55, 0, $STR_ble_traitement_add_action, $STR_ble_traitement, $STR_ble_traiter, 1, 8, $STR_ble_traitement_impossible_sans_licence},
			{"traitement_ble_tauri", 10, 54, 55, 1, $STR_ble_traitement_add_action, $STR_ble_traitement, $STR_ble_traiter, 1, 8, $STR_ble_traitement_impossible_sans_licence}
		};
	};
	class achat_vente
	{
		magasins[] = { // [id_pnj_magasin, isTauri (1 goauld, 2 tauri), [id_item_achetable, id_item_achetable, id_item_achetable], [id_item_vendable, id_item_vendable, id_item_vendable]]
			{"marcher_modulaire", 2, {1, 5, 23}, {1, 5}}
		};
	};
};