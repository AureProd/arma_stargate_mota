
// fonction name : mission_fnc_add_quetes_faites
// parmettres : [numero 1 quete, numero 2 quete, numero 3 quete, numero 4 quete ...etc]

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, garage, vehicules player]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _quetes_faites = _variable select 10;

private _num_quetes_faites = _this;

{
	if (!(_x in _quetes_faites)) then {
		_quetes_faites pushBack _x;
	};
} forEach _num_quetes_faites;

[[10, _quetes_faites]] call mission_fnc_modif_var_bdd;
