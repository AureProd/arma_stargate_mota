
private _parametre = param [0];

private _bool = true;

if ((_parametre select 8) == 1) then {
	if (!([(_parametre select 9)] call mission_fnc_has_licence)) then {
		hint (_parametre select 10);

		_bool = false;
	};
};

if (_bool) then {
	private _id_object = (_parametre select 2);

	if ([_id_object] call mission_fnc_is_in_inventory) then {
		private _id_object_bis = (_parametre select 3);

		recolte_ON = true;

		hint (_parametre select 6);

		[false] call mission_fnc_chargement;

		// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
		private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

		private _indexObjet = _liste_objets_config findIf {
			((_x select 0) == _id_object)
		};

		private _indexObjet_bis = _liste_objets_config findIf {
			((_x select 0) == _id_object_bis)
		};

		private _objet = (_liste_objets_config select _indexObjet);
		private _objet_bis = (_liste_objets_config select _indexObjet_bis);

		[(_objet select 0)] call mission_fnc_supprime_item;

		private _return = [player, (_objet_bis select 5)] call mission_fnc_calcul_poid;

		if (_return) then 
		{
			[(_objet_bis select 0)] call mission_fnc_add_item;

			hint (_parametre select 7);
		} else {
			hint localize "STR_erreur";
		};

		sleep 1;

		recolte_ON = false;
	} else {
		hint localize "STR_erreur";
	};
};







