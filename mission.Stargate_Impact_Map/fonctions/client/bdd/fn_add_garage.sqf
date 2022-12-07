
// fonction name : mission_fnc_add_garage
// parmettres : [numero 1 vehicule, numero 2 vehicule, numero 3 vehicule, numero 4 vehicule ...etc]

private _garage = ["garage"] call mission_fnc_getBDD;

private _num_vehicules = _this;

{
	if (!(_x in _garage)) then {
		_garage pushBack _x;
	};
} forEach _num_vehicules;

[[14, _garage]] call mission_fnc_modif_var_bdd;
