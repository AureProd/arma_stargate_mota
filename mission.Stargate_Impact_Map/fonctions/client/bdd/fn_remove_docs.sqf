
// fonction name : mission_fnc_remove_docs
// parmettres : [numero 1 document, numero 2 document, numero 3 document, numero 4 document ...etc]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _docs = _variable select 16;

private _num_docs = _this;

{
	if (_x in _docs) then {
		private _index = _docs find _x;
		_docs deleteAt _index;
	};
} forEach _num_docs;

[[16, _docs]] call mission_fnc_modif_var_bdd;