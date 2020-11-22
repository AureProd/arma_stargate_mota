
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _invVirtuelPlayer = _playerBdd select 8;

private _liste_objets_config = nil;

// { id / level / nom / lien image / type objets / poid / is militaire / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

private _liste_objets = (findDisplay 6000) displayCtrl 6005;
private _index = lbCurSel _liste_objets;

if (_index != -1) then 
{
	private _tab = [];

	{
		if ((_playerBdd select 1) == 2) then 
		{
			if (((_x select 8) == 1) or ((_x select 8) == 2)) then 
			{
				if (isMilitaire) then 
				{
					if (bouton_A_OK) then 
					{
						if ((_x select 4) == 1) then 
						{
							_tab pushBack _x;
						}
						else
						{
							if (((_x select 4) == 6)) then 
							{
								_tab pushBack _x;
							};
						};
					} 
					else 
					{
						if ((_x select 4) == 2) then 
						{
							_tab pushBack _x;
						}
						else
						{
							if (((_x select 0) == 2) or ((_x select 4) == 6)) then 
							{
								_tab pushBack _x;
							};
						};
					};
				}
				else 
				{
					if ((_x select 6) == 0) then 
					{
						if (bouton_A_OK) then 
						{
							if ((_x select 4) == 1) then 
							{
								_tab pushBack _x;
							}
							else
							{
								if (((_x select 4) == 6)) then 
								{
									_tab pushBack _x;
								};
							};
						} 
						else 
						{
							if ((_x select 4) == 2) then 
							{
								_tab pushBack _x;
							}
							else
							{
								if (((_x select 0) == 2) or ((_x select 4) == 6)) then 
								{
									_tab pushBack _x;
								};
							};
						};
					};
				};
			};
		}
		else
		{
			if (((_x select 8) == 0) or ((_x select 8) == 2)) then 
			{
				if (isMilitaire) then 
				{
					if (bouton_A_OK) then 
					{
						if ((_x select 4) == 1) then 
						{
							_tab pushBack _x;
						}
						else
						{
							if (((_x select 4) == 6)) then 
							{
								_tab pushBack _x;
							};
						};
					} 
					else 
					{
						if ((_x select 4) == 2) then 
						{
							_tab pushBack _x;
						}
						else
						{
							if (((_x select 0) == 2) or ((_x select 4) == 6)) then 
							{
								_tab pushBack _x;
							};
						};
					};
				}
				else 
				{
					if ((_x select 6) == 0) then 
					{
						if (bouton_A_OK) then 
						{
							if ((_x select 4) == 1) then 
							{
								_tab pushBack _x;
							}
							else
							{
								if (((_x select 4) == 6)) then 
								{
									_tab pushBack _x;
								};
							};
						} 
						else 
						{
							if ((_x select 4) == 2) then 
							{
								_tab pushBack _x;
							}
							else
							{
								if (((_x select 0) == 2) or ((_x select 4) == 6)) then 
								{
									_tab pushBack _x;
								};
							};
						};
					};
				};
			};
		};
	} forEach _liste_objets_config;

	private _objet = _tab select _index;

	private _return = [player, (_objet select 5)] call mission_fnc_calcul_poid;

	if (_return) then 
	{
		private _paiement = [(_objet select 7)] call mission_fnc_paiement;
		if (_paiement) then 
		{
			[(_objet select 0)] call mission_fnc_add_item;
		};
	}
	else
	{
		hint localize "STR_inventaire_plein";
	};
};