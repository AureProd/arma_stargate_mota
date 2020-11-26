
// fonction name : mission_fnc_remove_licence_distant
// parmettres : [numero licence, joueur]

private _joueur = param [0, player];

private _nomVarPlayer = format ["variable_%1", (getPlayerUID _joueur)]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _licences = _variable select 3;

private _num_licence = _this;

{
	if (_x in _licences) then {
		private _index = _licences find _x;
		_licences deleteAt _index;
	};
} forEach _num_licence;

[[3, _licences], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;