
[] call mission_fnc_depeucer;
[] call mission_fnc_pecher;
[] call mission_fnc_add_action_recolte;
[] call mission_fnc_events;
[] call mission_fnc_add_action_vehicle;

player addRating -2000;

player enableFatigue false;
player enableStamina false;

player setDamage 0;

// liste vies : [ % maladie tete, % maladie ventre, % hit tete, % hit ventre, % hit bras droit, % hit bras gauche, % hit jambe droit, % hit jambe gauche ]
private _liste_vies = [100, 100, 100, 100, 100, 100, 100, 100];

[[5, 100], [6, 100], [7, 100], [8, []], [9, _liste_vies]] call mission_fnc_modif_var_bdd;

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
private _variable = missionNamespace getVariable nomVarPlayerUID;

menu_y_ok = true;

private _spawnGoauld = getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_goauld");
private _spawnTauri = getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_tauri");

if ((_variable select 1) == 1) then 
{
	player setPos [_spawnGoauld select 0, _spawnGoauld select 1, _spawnGoauld select 2];

	player setUnitLoadout (missionConfigFile >> "stargate_items" >> "loadout_goauld");
} 
else 
{
	player setPos [_spawnTauri select 0, _spawnTauri select 1, _spawnTauri select 2];
	
	player setUnitLoadout (missionConfigFile >> "stargate_items" >> "loadout_tauri");
};

/* if (1 in (_variable select 10)) then {
	player linkItem "ItemMap";
}; */

[] call mission_fnc_syns_data;
