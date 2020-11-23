
/*
	tete --> 1
	ventre --> 2
	bras droit --> 3
	bras gauche --> 4
	jambe droit --> 5
	jambe gauche --> 6
*/
private _point_corps = param [0];

private _liste_objets = (findDisplay 5000) displayCtrl 5005;
private _index = lbCurSel _liste_objets;

if ((_index != -1) and (bouton_A_OK_bis != 1)) then 
{
	// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, garage, vehicules player]
	private _variablesPlayer = missionNamespace getVariable nomVarPlayerUID;
	private _vie = _variablesPlayer select 5;

	// liste vies : [ % maladie tete, % maladie ventre, % hit tete, % hit ventre, % hit bras droit, % hit bras gauche, % hit jambe droit, % hit jambe gauche ]
	private _liste_vies = _variablesPlayer select 9;

	if (bouton_A_OK_bis == 2) then 
	{
		// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
		private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
		private _inventaire_virtuel = _playerBdd select 8;

		// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
		private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

		private _object = nil;

		private _tab = (_inventaire_virtuel select (liste_joueurs_groupe select _index));
		{
			if ((_tab select 0) == (_x select 0)) then
			{
				_object = _x;
			};
		} forEach _liste_objets_config;

		switch (_point_corps) do 
		{
			case 1: 
			{ 
				private _liste_vies_bis = (_liste_vies select 2);

				if (_liste_vies_bis != 100 && (((_object select 9) == 0) || ((_object select 9) == 1) || ((_object select 9) == 3))) then 
				{
					playSound 'button';
					
					[] call mission_fnc_utiliser_item_medical;

					_vie = (_vie + (100 - _liste_vies_bis));
					_liste_vies set [2, 100];

					//player setDamage (1 - (_vie / 100));
					[_vie] call mission_fnc_set_damage_player;

					[] call mission_fnc_medical_bouton_blessure;
					
					[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;
				};
			};
			case 2: 
			{ 
				private _liste_vies_bis = (_liste_vies select 3);

				if (_liste_vies_bis != 100 && (((_object select 9) == 0) || ((_object select 9) == 2) || ((_object select 9) == 3))) then 
				{
					playSound 'button';
					
					[] call mission_fnc_utiliser_item_medical;

					_vie = (_vie + (100 - _liste_vies_bis));
					_liste_vies set [3, 100];
					
					//player setDamage (1 - (_vie / 100));
					[_vie] call mission_fnc_set_damage_player;

					[] call mission_fnc_medical_bouton_blessure;
					
					[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;
				};
			};
			case 3: 
			{ 
				private _liste_vies_bis = (_liste_vies select 4);

				if (_liste_vies_bis != 100 && (((_object select 9) == 0) || ((_object select 9) == 4))) then 
				{
					playSound 'button';
					
					[] call mission_fnc_utiliser_item_medical;

					_vie = (_vie + (100 - _liste_vies_bis));
					_liste_vies set [4, 100];

					//player setDamage (1 - (_vie / 100));
					[_vie] call mission_fnc_set_damage_player;

					[] call mission_fnc_medical_bouton_blessure;
					
					[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;
				};
			};
			case 4: 
			{ 
				private _liste_vies_bis = (_liste_vies select 5);

				if (_liste_vies_bis != 100 && (((_object select 9) == 0) || ((_object select 9) == 4))) then 
				{
					playSound 'button';
					
					[] call mission_fnc_utiliser_item_medical;

					_vie = (_vie + (100 - _liste_vies_bis));
					_liste_vies set [5, 100];

					//player setDamage (1 - (_vie / 100));
					[_vie] call mission_fnc_set_damage_player;

					[] call mission_fnc_medical_bouton_blessure;
					
					[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;
				};
			};
			case 5: 
			{ 
				private _liste_vies_bis = (_liste_vies select 6);

				if (_liste_vies_bis != 100 && (((_object select 9) == 0) || ((_object select 9) == 5))) then 
				{
					playSound 'button';
					
					[] call mission_fnc_utiliser_item_medical;

					_vie = (_vie + (100 - _liste_vies_bis));
					_liste_vies set [6, 100];

					//player setDamage (1 - (_vie / 100));
					[_vie] call mission_fnc_set_damage_player;

					[] call mission_fnc_medical_bouton_blessure;
					
					[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;
				};
			};
			case 6: 
			{ 
				private _liste_vies_bis = (_liste_vies select 7);

				if (_liste_vies_bis != 100 && (((_object select 9) == 0) || ((_object select 9) == 5))) then 
				{
					playSound 'button';
					
					[] call mission_fnc_utiliser_item_medical;

					_vie = (_vie + (100 - _liste_vies_bis));
					_liste_vies set [7, 100];

					//player setDamage (1 - (_vie / 100));
					[_vie] call mission_fnc_set_damage_player;

					[] call mission_fnc_medical_bouton_blessure;
					
					[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;
				};
			};
		};
	} 
	else 
	{
		// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
		private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

		// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
		private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

		// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
		private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
		private _inventaire_virtuel = _playerBdd select 8;

		private _logo_tete = (findDisplay 5000) displayCtrl 5009; 		
		private _logo_ventre = (findDisplay 5000) displayCtrl 5010;

		private _liste_objets = (findDisplay 5000) displayCtrl 5005;
		private _index = lbCurSel _liste_objets;

		private _fonction_bis_OK = false;

		private _id_objet = nil;
		private _object = nil;

		private _tab = (_inventaire_virtuel select (liste_joueurs_groupe select _index));
		{
			if ((_tab select 0) == (_x select 0)) then
			{
				_id_objet = (_x select 0);
				_object = _x;
			};
		} forEach _liste_objets_config;

		switch (_point_corps) do 
		{
			case 1: 
			{ 
				if (_id_objet == 7) then 
				{
					private _liste_vies_bis = (_liste_vies select 0);

					if (_liste_vies_bis != 100 && (((_object select 9) == 0) || ((_object select 9) == 1) || ((_object select 9) == 3))) then 
					{
						playSound 'button';
						
						[] call mission_fnc_utiliser_item_medical;

						_vie = (_vie + (100 - _liste_vies_bis));
						_liste_vies set [0, 100];

						//player setDamage (1 - (_vie / 100));
						[_vie] call mission_fnc_set_damage_player;

						[] call mission_fnc_medical_bouton_maladie;

						[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;
					};
				};
			};
			case 2: 
			{ 
				if (_id_objet == 8) then 
				{
					private _liste_vies_bis = (_liste_vies select 1);

					if (_liste_vies_bis != 100 && (((_object select 9) == 0) || ((_object select 9) == 2) || ((_object select 9) == 3))) then 
					{
						playSound 'button';
						
						[] call mission_fnc_utiliser_item_medical;

						_vie = (_vie + (100 - _liste_vies_bis));
						_liste_vies set [1, 100];

						//player setDamage (1 - (_vie / 100));
						[_vie] call mission_fnc_set_damage_player;

						[] call mission_fnc_medical_bouton_maladie;
						
						[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;
					};
				};
			};
		};
	};
};
