
// fonction name : mission_fnc_remove_planetes
// parmettres : [numero planete, type planete]
// |--> type planete (0 si planete stargate et 1 si map)

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _planetes = _variable select 12;

private _num_planetes = param [0];

if (_num_planetes in (_planetes select (param [1]))) then {
	(_planetes select (param [1])) pushBack _num_planetes;
	private _index = (_planetes select (param [1])) find _num_planetes;
	(_planetes select (param [1])) deleteAt _index;
};

[[12, _planetes]] call mission_fnc_modif_var_bdd;