
// id de objet
private _objet = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _invVirtuelPlayer = _playerBdd select 8;

if ((_objet == 2) or (_objet == 4) or (_objet == 30) or (_objet == 31)) then 
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
		case 30: 
		{ 
			// objet couteau --> id / count
			_invVirtuelPlayer pushBack [_objet, 1];
		};
		case 31: 
		{ 
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

