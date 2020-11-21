
// fonction name : mission_fnc_remove_quetes_actives
// parmettres : [numero 1 quete, numero 2 quete, numero 3 quete, numero 4 quete ...etc]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _quetes_actives = _variable select 13;

private _num_quetes_actives = _this;

{
	if (_x in _quetes_actives) then {
		private _index = _quetes_actives find _x;
		_quetes_actives deleteAt _index;
	};
} forEach _num_quetes_actives;

[[13, _quetes_actives]] call mission_fnc_modif_var_bdd;