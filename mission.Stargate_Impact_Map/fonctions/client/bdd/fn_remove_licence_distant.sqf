
// fonction name : mission_fnc_remove_licence_distant
// parmettres : [numero licence, joueur]

private _joueur = param [1, player];

private _nomVarPlayer = format ["variable_%1", (getPlayerUID _joueur)]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _licences = _variable select 3;

private _num_licence = param [0];

if (_num_licence in _licences) then {
	private _index = _licences find _num_licence;
	_licences deleteAt _index;
};

[[3, _licences], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;