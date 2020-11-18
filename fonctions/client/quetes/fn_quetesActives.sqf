
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _tab_quetes_deja_faite = _playerBdd select 10;
private _tab_quetes_dispo = _playerBdd select 11;
private _tab_quetes_active = _playerBdd select 13;

private _config_quetes = nil; 
private _tab_quetes = [];

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
		};
		case 2: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_scientifique");
		};
		case 3: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_soldat");
		};
	};
} 
else 
{
	switch (_playerBdd select 0) do 
	{
		case 1: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_goauld_archeologue");
		};
		case 2: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_goauld_scientifique");
		};
		case 3: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_goauld_soldat");
		};
	};
};

{
	if ((_x select 0) in _tab_quetes_active) then 
	{
		_tab_quetes pushBack _x;
	};
} forEach _config_quetes;

{
	call compile (_x select 7);
} forEach _tab_quetes;

