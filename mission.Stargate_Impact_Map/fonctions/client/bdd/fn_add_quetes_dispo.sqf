
// fonction name : mission_fnc_add_quetes_dispo
// parmettres : [numero 1 quete, numero 2 quete, numero 3 quete, numero 4 quete ...etc]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, garage, vehicules player]
private _variable = missionNamespace getVariable _nomVarPlayer;

private _quetes_dispo = _variable select 11;

private _num_quetes_dispo = _this;

{
	if (!(_x in _quetes_dispo)) then {
		_quetes_dispo pushBack _x;
	};
} forEach _num_quetes_dispo;

[[11, _quetes_dispo]] call mission_fnc_modif_var_bdd;
