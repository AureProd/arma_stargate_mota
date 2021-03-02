
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _invVirtuelPlayer = _playerBdd select 8;

// { id / level / nom / lien image / type objets / poid / is militaire / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

private _liste_objets = (findDisplay 20000) displayCtrl 20005;
private _index = lbCurSel _liste_objets;

if (_index != -1) then 
{
	private _tab = [];

	{
		if (bouton_A_OK) then {
			if ((_playerBdd select 1) == 2) then // is tauri
			{
				if (((_x select 8) == 1) or ((_x select 8) == 2)) then // verif si objet for tauri
				{
					if ((_x select 6) == 0) then // verif si pas militaire
					{
						if ((_x select 4) == 7) then // verif si objet is outil
						{
							_tab pushBack _x;
						};
					};
				};
			}
			else // is goauld
			{
				if (((_x select 8) == 0) or ((_x select 8) == 2)) then // verif si objet for goauld
				{
					if ((_x select 6) == 0) then // verif si pas militaire
					{
						if ((_x select 4) == 7) then // verif si objet is outil
						{
							_tab pushBack _x;
						};
					};
				};
			};
		} else {
			{
				private _tab_bis = _x;
				{
					if ((_tab_bis select 0) == (_x select 0)) then
					{
						_tab pushBack _x;
					};
				} forEach _liste_objets_config;
			} forEach _invVirtuelPlayer;
		};
	} forEach _liste_objets_config;

	private _objet = _tab select _index;

	if (bouton_A_OK) then {
		if ((_objet select 4) == 7) then {
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
	};
};