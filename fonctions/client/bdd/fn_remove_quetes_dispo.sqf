
// fonction name : mission_fnc_remove_quetes_dispo
// parmettres : [numero 1 quete, numero 2 quete, numero 3 quete, numero 4 quete ...etc]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _quetes_dispo = _variable select 11;

private _num_quetes_dispo = _this;

{
	if (_x in _quetes_dispo) then {
		private _index = _quetes_dispo find _x;
		_quetes_dispo deleteAt _index;
	};
} forEach _num_quetes_dispo;

[[3, _quetes_dispo]] call mission_fnc_modif_var_bdd;