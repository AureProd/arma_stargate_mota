
// [numero planete] call mission_fnc_remove_planetes

private _variable = missionNamespace getVariable nomVarPlayerUID;

private _planetes = _variable select 12;

private _num_planetes = param [0];

if (_num_planetes in _planetes) then {
	private _index = _planetes find _num_planetes;
	_planetes deleteAt _index;
};

[[12, _planetes]] call mission_fnc_modif_var_bdd;