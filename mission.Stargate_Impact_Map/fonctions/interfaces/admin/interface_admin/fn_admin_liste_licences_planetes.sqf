
private _select_liste_bdd = (findDisplay 12000) displayCtrl 12035;
private _indexTypeBdd = lbCurSel _select_liste_bdd;

private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;
private _index = lbCurSel _liste_joueurs;

private _liste_planetes = (findDisplay 12000) displayCtrl 12004;
lbClear _liste_planetes;

if (_index != -1) then {
	private _player = allPlayers select _index;

	switch (_indexTypeBdd) do {
		case 0: { // planetes decouvertes
			{
				if ([(_x select 0)] call mission_fnc_has_planetes) then {
					_liste_planetes lbAdd (format ["%1", (_x select 1)]);
				};
			} forEach (getArray(missionConfigFile >> "docs_planetes" >> "planetes" >> "liste"));

			_liste_planetes lbSetCurSel -1;
		};
		case 1: { // licences
			{
				if ((_x select 0) in (["licences", _player] call mission_fnc_getBDD)) then {
					private _index = _liste_planetes lbAdd (_x select 1);
					_liste_planetes lbSetPicture [_index, (_x select 2)];
				};
			} forEach (getArray(missionConfigFile >> "stargate" >> "licences" >> "licences_tableau"));
		};
		case 2: { // items
			// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, planete visite]
			private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
			private _inventaire_virtuel = _playerBdd select 8;

			// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
			private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

			{
				private _tab = _x;
				{
					if ((_tab select 0) == (_x select 0)) then
					{
						if (((_x select 0) == 2) or ((_x select 0) == 4) or ((_x select 4) == 7)) then 
						{
							private _index = nil;

							switch (_x select 0) do 
							{
								case 2: 
								{ 
									if (_tab select 2) then 
									{
										_index = _liste_planetes lbAdd (format ["eau purifiée (%1 %2)", (_tab select 3), "%"]);
									} 
									else 
									{
										if ((_tab select 3) == 0) then 
										{
											_index = _liste_planetes lbAdd ("gourde vide");
										}
										else
										{
											_index = _liste_planetes lbAdd (format ["eau sale (%1 %2)", (_tab select 3), "%"]);
										};
									};
								};
								case 4: 
								{ 
									_index = _liste_planetes lbAdd (format ["%1 (%2 %3)", (_x select 2), (_tab select 2), "%"]);
								};
								default { 
									_index = _liste_planetes lbAdd (format ["%1", (_x select 2)]);
								};
							};
							
							_liste_planetes lbSetPicture [_index, (_x select 3)];
						} 
						else 
						{
							private _index = _liste_planetes lbAdd (format ["%1 [x%2]", (_x select 2), (_tab select 1)]);
							_liste_planetes lbSetPicture [_index, (_x select 3)];
						};
					};
				} forEach _liste_objets_config;
			} forEach _inventaire_virtuel;
		};
		case 3: { // docs debloqués
			{
				if ([(_x select 0)] call mission_fnc_has_docs) then {
					_liste_planetes lbAdd (format ["%1", (_x select 1)]);
				};
			} forEach (getArray(missionConfigFile >> "docs_planetes" >> "documents" >> "liste"));

			_liste_planetes lbSetCurSel -1;
		};
	};
};



