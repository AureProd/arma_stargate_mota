
private _listbox_objets = (findDisplay 3000) displayCtrl 3002;
private _listbox_joueurs = (findDisplay 3000) displayCtrl 3006;

private _bouton_utiliser = (findDisplay 3000) displayCtrl 3011;
private _bouton_donner = (findDisplay 3000) displayCtrl 3012;
private _bouton_supprimer = (findDisplay 3000) displayCtrl 3013;

lbClear _listbox_objets;
lbClear _listbox_joueurs;

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaire_virtuel = _playerBdd select 8;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

{
	private _tab = _x;
	{
		if ((_tab select 0) == (_x select 0)) then
		{
			if (((_x select 0) == 2) or ((_x select 0) == 4)) then 
			{
				private _index = nil;

				switch (_x select 0) do 
				{
					case 2: 
					{ 
						if (_tab select 2) then 
						{
							_index = _listbox_objets lbAdd (format ["eau purifiée (%1 %2)", (_tab select 3), "%"]);
						} 
						else 
						{
							if ((_tab select 3) == 0) then 
							{
								_index = _listbox_objets lbAdd ("gourde vide");
							}
							else
							{
								_index = _listbox_objets lbAdd (format ["eau sale (%1 %2)", (_tab select 3), "%"]);
							};
						};
					};
					case 4: 
					{ 
						_index = _listbox_objets lbAdd (format ["%1 (%2 %3)", (_x select 2), (_tab select 2), "%"]);
					};
				};
				
				_listbox_objets lbSetPicture [_index, (_x select 3)];
			} 
			else 
			{
				private _index = _listbox_objets lbAdd (format ["%1 [x%2]", (_x select 2), (_tab select 1)]);
				_listbox_objets lbSetPicture [_index, (_x select 3)];
			};
		};
	} forEach _liste_objets_config;
} forEach _inventaire_virtuel;

liste_joueurs_groupe = [];
{
	// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
	private _joueurDonnees = missionNamespace getVariable (format ["variable_%1", getPlayerUID _x]);

	if ((_x != player) and ((_joueurDonnees select 1) == (_playerBdd select 1))) then 
	{
		_listbox_joueurs lbAdd format ["%1", name _x];
		liste_joueurs_groupe pushBack _x;
	};
} forEach allPlayers;

_bouton_utiliser ctrlEnable false;
_bouton_donner ctrlEnable false;
_bouton_supprimer ctrlEnable false;

_listbox_joueurs lbSetCurSel -1;
_listbox_objets lbSetCurSel -1;