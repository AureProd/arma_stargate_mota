
// id de objet
private _objet = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _invVirtuelPlayer = _playerBdd select 8;

private _result = nil;
private _tab_total = [];

{
	if ((_x select 0) == _objet) then 
	{
		private _count = ((_x select 1) - 1);

		if (_count == 0) then 
		{
			_result = false;
		}
		else
		{
			_tab_total pushBack [_objet, _count];
			
			_result = true;
		};
	}
	else
	{
		_tab_total pushBack _x;
	};
} forEach _invVirtuelPlayer;

[[8, _tab_total]] call mission_fnc_modif_var_bdd;

_result;