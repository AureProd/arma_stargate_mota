
private _inventaire_virtuel =  param [0]; 
private _poid_objet =  param [1];

private _poid_total_inventaire = 100;

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
			_poid_perso = _poid_perso + (_x select 5);
		};
	} forEach _liste_objets_config;
} forEach _inventaire_virtuel;

private _return = false;

if ((_poid_perso + _poid_objet) <= _poid_total_inventaire) then 
{
	_return = true;
};

_return;