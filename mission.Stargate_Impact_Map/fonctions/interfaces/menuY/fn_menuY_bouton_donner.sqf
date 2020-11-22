
private _liste_players = (findDisplay 3000) displayCtrl 3006;
private _index_player = lbCurSel _liste_players;
private _joueur_distant = (liste_joueurs_groupe select _index_player);

if ((player distance2D _joueur_distant) < 10) then {
	// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
	private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
	private _inventaire_virtuel = _playerBdd select 8;

	private _nb_item_dialogue = (findDisplay 3000) displayCtrl 3005;
	private _nb_item = ctrlText _nb_item_dialogue;

	_nb_item = [_nb_item] call mission_fnc_to_number;

	private _var_bdd_joueur_distant = format ["variable_%1", getPlayerUID _joueur_distant];

	// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
	private _joueur_distant_Bdd = missionNamespace getVariable _var_bdd_joueur_distant;
	private _inventaire_virtuel_joueur_distant = _joueur_distant_Bdd select 8;

	// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
	private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

	private _liste_objets = (findDisplay 3000) displayCtrl 3002;
	private _index = lbCurSel _liste_objets;

	private _tab = (_inventaire_virtuel select _index);

	if ((_tab select 1) >= _nb_item) then 
	{
		{
			if ((_tab select 0) == (_x select 0)) then
			{
				private _return = [_joueur_distant, ((_x select 5) * _nb_item)] call mission_fnc_calcul_poid;

				if (_return) then 
				{
					if (((_tab select 0) == 2) or ((_tab select 0) == 4) or ((_tab select 0) == 30) or ((_tab select 0) == 31)) then 
					{
						switch ((_tab select 0)) do 
						{
							case 2: 
							{ 
								// objet GOURDE --> id / count / eau est propre / pourcentage utilistations
								_inventaire_virtuel_joueur_distant pushBack [(_tab select 0), 1, (_tab select 2), (_tab select 3)];

								_joueur_distant_Bdd set [8, _inventaire_virtuel_joueur_distant];
								missionNamespace setVariable [_var_bdd_joueur_distant, _joueur_distant_Bdd, true];

								[(_tab select 0), false, _index] call mission_fnc_supprime_item;
							};
							case 4: 
							{ 
								// objet RATION --> id / count / pourcentage utilistations
								_inventaire_virtuel_joueur_distant pushBack [(_tab select 0), 1, (_tab select 2)];

								_joueur_distant_Bdd set [8, _inventaire_virtuel_joueur_distant];
								missionNamespace setVariable [_var_bdd_joueur_distant, _joueur_distant_Bdd, true];

								[(_tab select 0), false, _index] call mission_fnc_supprime_item;
							};
							case 30: 
							{ 
								// objet couteau --> id / count
								_inventaire_virtuel_joueur_distant pushBack [(_tab select 0), 1];

								_joueur_distant_Bdd set [8, _inventaire_virtuel_joueur_distant];
								missionNamespace setVariable [_var_bdd_joueur_distant, _joueur_distant_Bdd, true];

								[(_tab select 0), false, _index] call mission_fnc_supprime_item;
							};
							case 31: 
							{ 
								// objet couteau --> id / count
								_inventaire_virtuel_joueur_distant pushBack [(_tab select 0), 1];

								_joueur_distant_Bdd set [8, _inventaire_virtuel_joueur_distant];
								missionNamespace setVariable [_var_bdd_joueur_distant, _joueur_distant_Bdd, true];

								[(_tab select 0), false, _index] call mission_fnc_supprime_item;
							};
						};
					}
					else
					{
						private _varOK = false;
						private _tab_bis = nil;
						private _tab_total = [];

						{
							if ((_x select 0) == (_tab select 0)) then 
							{
								_varOK = true;
								_tab_bis = _x;
							}
							else
							{
								_tab_total pushBack _x;
							};
						} forEach _inventaire_virtuel_joueur_distant;

						if (_varOK) then 
						{
							private _count = ((_tab_bis select 1) + 1);
							_count = _count * _nb_item;

							_tab_total pushBack [(_tab select 0), _count];
							_inventaire_virtuel_joueur_distant = _tab_total;
						}
						else
						{
							_inventaire_virtuel_joueur_distant pushBack [(_tab select 0), (1 * _nb_item)];
						};

						_joueur_distant_Bdd set [8, _inventaire_virtuel_joueur_distant];
						missionNamespace setVariable [_var_bdd_joueur_distant, _joueur_distant_Bdd, true];

						for "_i" from 1 to _nb_item do
						{
							[(_tab select 0)] call mission_fnc_supprime_item;
						};
					};
				}
				else
				{
					hint localize "STR_inventaire_joueur_distant_plein";
				};
			};
		} forEach _liste_objets_config;
	}
	else
	{
		if (((_tab select 0) == 2) or ((_tab select 0) == 4) or ((_tab select 4) == 7)) then 
		{
			if ((_tab select 0) == 2) then 
			{
				hint localize "STR_impossible_donner_2_gourdes";
			} 
			else 
			{
				if ((_tab select 0) == 4) then 
				{
					hint localize "STR_impossible_donner_2_rations";
				} 
				else 
				{
					hint localize "STR_impossible_donner_2_outils";
				};
			};
		}
		else 
		{
			hint localize "STR_impossible_donner_plus_qu_on_peut";
		};
	};

	[] call mission_fnc_actualise_menu_y;	
} else {
	hint localize "STR_joueur_distant_trop_loin";
};

