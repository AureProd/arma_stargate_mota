
// id de objet
private _objet = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _invVirtuelPlayer = _playerBdd select 8;

private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

private _newObjet = _liste_objets_config select (_liste_objets_config findIf {
	(_x select 0) == _objet
});

if ((_objet == 2) or (_objet == 4) or ((_newObjet select 4) == 7)) then 
{
	switch (_objet) do 
	{
		case 2: 
		{ 
			// objet GOURDE --> id / count / eau est propre / pourcentage utilistations
			_invVirtuelPlayer pushBack [_objet, 1, true, 100];
		};
		case 4: 
		{ 
			// objet RATION --> id / count / pourcentage utilistations
			_invVirtuelPlayer pushBack [_objet, 1, 100];
		};
		default { 
			// objet couteau --> id / count
			_invVirtuelPlayer pushBack [_objet, 1];
		};
	};

	[[8, _invVirtuelPlayer]] call mission_fnc_modif_var_bdd;
}
else
{
	private _varOK = true;
	private _tab_total = [];

	{
		if ((_x select 0) == _objet) then 
		{
			_varOK = false;

			private _count = ((_x select 1) + 1);
			_tab_total pushBack [_objet, _count];
		}
		else
		{
			_tab_total pushBack _x;
		};
	} forEach _invVirtuelPlayer;

	if (_varOK) then 
	{
		_tab_total pushBack [_objet, 1];
	};

	[[8, _tab_total]] call mission_fnc_modif_var_bdd;
};

