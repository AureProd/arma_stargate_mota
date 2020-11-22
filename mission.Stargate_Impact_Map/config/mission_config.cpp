
class stargate
{
	class coordonnees_spawn
    {
		spawn_goauld[] = {38894.375, 38926.156, 0.5}; // biome goauld
        spawn_tauri[] = {38144.555, 3127.349, 0.5}; // biome tauri
	};
	class licences
	{
		licences_tableau[] = {
			{1, $STR_Archeologue}, 
			{2, $STR_Scientifique},
			{3, $STR_Soldat},
			{4, $STR_Permis_Conduire}
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
		zones[] = {"zone_peche_1", "zone_peche_2"};
	};
};