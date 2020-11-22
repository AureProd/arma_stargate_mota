
// fonction name : mission_fnc_add_planetes
// parmettres : [numero 1 planete, numero 2 planete, numero 3 planete, numero 4 planete ...etc]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _planetes = _variable select 12;

private _num_planetes = _this;

{
	if (!(_x in _planetes)) then {
		_planetes pushBack _x;
	};
} forEach _num_planetes;

[[12, _planetes]] call mission_fnc_modif_var_bdd;
