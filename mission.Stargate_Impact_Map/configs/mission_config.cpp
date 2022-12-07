
class general_informations
{
	class spawn_coordinates
    {
		goauld_spawn[] = {38894.375, 38926.156, 0.5}; // goauld biome spawn coordinates
		tauri_spawn[] = {38144.555, 3127.349, 0.5}; // tauri biome spawn coordinates
	};
	class jails
    {
		goauld_jail[] = {36904.535, 3179.304, 0.5}; // goauld_jail coordinates
		tauri_jail[] = {36950.266, 3178.416, 0.5}; // tauri_jail coordinates

		goauld_jail_id = "goauld_jail"; // marker goauld_jail
		tauri_jail_id = "tauri_jail"; // marker tauri_jail

		jail_time = 300; // time in seconds
	};
	class licenses
	{
		// id / text / picture / isPurchasable / isRemovable / price / level
		licenses[] = {
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
	class hunting
	{
		areas[] = { // areas id / animals number
			{"zone_chasse_1", 30},
			{"zone_chasse_2", 20}
		};
	};
	class fishing
	{
		// [area 1 id, area 2 id]
		areas[] = {"zone_peche_1", "zone_peche_2"};
	};
	class harvest
	{
		// [area id, level access, item id, is goauld or tauri (0 goauld, 1 tauri, 2 tauri and goauld), text stringtable (text addAction), text stringtable (text harvest)]
		areas[] = { 
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
	class treatment
	{
		// [area id, level access, item id before treatment, item id after treatment, is goauld or tauri (0 goauld, 1 tauri, 2 tauri and goauld), text stringtable (text addAction), text stringtable (text treatment), text stringtable (text treat), has licence (1 if true and 0 if false), num licence, text stringtable (text no licence)]
		points[] = { 
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
	class buy_sell
	{
		// [pnj_shop_id, isTauri (1 goauld, 2 tauri), [buyable_item_id, buyable_item_id, buyable_item_id], [sellable_item_id, sellable_item_id, sellable_item_id]]
		magasins[] = {};
	};
};