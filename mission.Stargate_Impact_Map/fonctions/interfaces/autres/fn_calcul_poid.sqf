
// fonction name : mission_fnc_calcul_poid
// parmettres : [player, poid]

private _player = param [0, player]; 
private _poid_objet =  param [1, 0];

private _inventaire_virtuel = ["inventaire virtuel", _player] call mission_fnc_getBDD;

private _levelPlayer = ["level", _player] call mission_fnc_getBDD;
private _poid_total_inventaire = 40 + _levelPlayer;

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

private _return = false;

if ((_poid_perso + _poid_objet) <= _poid_total_inventaire) then 
{
	_return = true;
};

_return;