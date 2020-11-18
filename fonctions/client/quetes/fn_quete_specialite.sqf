
// quete id 3

private _isDebut = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _config_quetes = nil; 
private _tab_quete = nil;
private _licence = nil;
private _dialog = nil;

/*	
	classes :
	1 = archeoloque
	2 = scientifique
	3 = soldat 
	races :
	1 = goauld
	2 = tauri	
*/
if ((_playerBdd select 1) == 2) then 
{
	switch (_playerBdd select 0) do 
	{
		case 1: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_archeologue");
			_licence = 1;
			_dialog = "popup_specialites_archeologue";
		};
		case 2: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_scientifique");
			_licence = 2;
			_dialog = "popup_specialites_scientifique";
		};
		case 3: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_soldat");
			_licence = 3;
			_dialog = "popup_specialites_soldat";
		};
	};

	{
		if ((_x select 0) == 3) then 
		{
			_tab_quete = _x;
		};
	} forEach _config_quetes;

	private _tab_quetes_deja_faite = _playerBdd select 10;
	private _tab_quetes_dispo = _playerBdd select 11;
	private _tab_quetes_active = _playerBdd select 13;

	private _tab_licences = _playerBdd select 3;

	if (_isDebut) then 
	{
		[_dialog] call mission_fnc_interface_open;
	}
	else 
	{
		[(_tab_quete select 4)] call mission_fnc_add_xp;

		_tab_licences pushBack _licence;

		if (_licence == 1) then 
		{
			hint (getText (missionConfigFile >> "stargate_quetes" >> "quetes_en_plus" >> "quetes_en_dev" >> "quete_archeologue")); 
		};

		if (_licence == 2) then 
		{
			hint (getText (missionConfigFile >> "stargate_quetes" >> "quetes_en_plus" >> "quetes_en_dev" >> "quete_scientifique")); 
		};

		_tab_quetes_dispo deleteAt ((_playerBdd select 11) find (_tab_quete select 0));
		_tab_quetes_deja_faite pushBack (_tab_quete select 0);
	};

	[[3, _tab_licences], [10, _tab_quetes_deja_faite], [11, _tab_quetes_dispo], [13, _tab_quetes_active]] call mission_fnc_modif_var_bdd;
};



