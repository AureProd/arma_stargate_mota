
// [] call mission_fnc_getPoidInventaire

private _inventaire_virtuel = ["inventaire virtuel"] call mission_fnc_getBDD;

private _poid_perso = 0;

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

{
	private _tab = _x;
	{
		if ((_tab select 0) == (_x select 0)) then 
		{
			_poid_perso = _poid_perso + ((_x select 5) * (_tab select 1));
		};
	} forEach _liste_objets_config;
} forEach _inventaire_virtuel;

_poid_perso;