
class stargate
{
	class coordonnees_spawn
    {
		spawn_goauld[] = {38869.605, 38965.328, 0.5}; // a coté de etang / biome goauld
        spawn_tauri[] = {38144.555, 3127.349, 0.5}; // place des chalets / biome tauri
	};
	class licences
	{
		licences_tableau[] = {
			{1, "apprentit archeologue"}, 
			{2, "apprentit scientifique"},
			{3, "gendarme"},
			{4, "permis conduire"}
		};
	};
	class chasse
	{
		zones[] = { // id de zone / nb d'annimaux
			{"zone_chasse_1", 10},
			{"zone_chasse_2", 10}
		};
	};
	class peche
	{
		zones[] = {"zone_peche_1", "zone_peche_2"};
	};
};