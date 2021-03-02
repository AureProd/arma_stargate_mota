
// fonction name : mission_fnc_add_garage
// parmettres : [numero 1 vehicule, numero 2 vehicule, numero 3 vehicule, numero 4 vehicule ...etc]

private _variable = missionNamespace getVariable nomVarPlayerUID;

private _garage = _variable select 14;

private _num_vehicules = _this;

{
	if (!(_x in _garage)) then {
		_garage pushBack _x;
	};
} forEach _num_vehicules;

[[14, _garage]] call mission_fnc_modif_var_bdd;
