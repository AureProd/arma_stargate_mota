
class stargate
{
	class coordonnees_spawn
    {
		spawn_goauld[] = {38894.375, 38926.156, 0.5}; // biome goauld
        spawn_tauri[] = {38144.555, 3127.349, 0.5}; // biome tauri
	};
	class prisons
    {
		prison_goauld[] = {36904.535, 3179.304, 0.5}; // biome goauld
        prison_tauri[] = {36950.266, 3178.416, 0.5}; // biome tauri

		temp_prison = 300;
	};
	class licences
	{
		// id / text / image / isAchetable / isSupprimable
		licences_tableau[] = {
			{1, $STR_Permis_Conduire, "pictures\licences\SGI_licence_permis_co.paa", 1, 1},
			{2, $STR_Port_Arme, "pictures\licences\SGI_licence_armecivil_co.paa", 1, 1},
			{3, $STR_Prisonnier, "", 0, 1}
		};
	};
	class chasse
	{
		zones[] = { // id de zone / nb d'annimaux
			{"zone_chasse_1", 20},
			{"zone_chasse_2", 10}
		};
	};
	class peche
	{
		// [id zone 1, id zone 2]
		zones[] = {"zone_peche_1", "zone_peche_2"};
	};
};