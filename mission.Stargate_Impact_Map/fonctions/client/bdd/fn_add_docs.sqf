
// [numero 1 document, numero 2 document] call mission_fnc_add_docs

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _docs = _variable select 15;

private _num_docs = _this;

{
	if (!(_x in _docs)) then {
		_docs pushBack _x;
	};
} forEach _num_docs;

[[15, _docs]] call mission_fnc_modif_var_bdd;
