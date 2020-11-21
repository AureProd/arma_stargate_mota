
// fonction name : mission_fnc_add_quetes_actives
// parmettres : [numero 1 quete, numero 2 quete, numero 3 quete, numero 4 quete ...etc]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, garage, vehicules player]
private _variable = missionNamespace getVariable _nomVarPlayer;

private _quetes_actives = _variable select 13;

private _num_quetes_actives = _this;

{
	if (!(_x in _quetes_actives)) then {
		_quetes_actives pushBack _x;
	};
} forEach _num_quetes_actives;

[[13, _quetes_actives]] call mission_fnc_modif_var_bdd;
