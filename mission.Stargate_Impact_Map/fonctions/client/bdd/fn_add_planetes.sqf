
// [numero planete] call mission_fnc_add_planetes

private _variable = missionNamespace getVariable nomVarPlayerUID;

private _planetes = _variable select 12;

private _num_planetes = param [0];

if (!(_num_planetes in _planetes)) then {
	_planetes pushBack _num_planetes;
};

[[12, _planetes]] call mission_fnc_modif_var_bdd;
