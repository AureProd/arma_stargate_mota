
// fonction name : player_fnc_setRace
// parmettres : [numero race]

/* 
Classes :
	1 = goauld
	2 = tauri
*/

private _num = param [0];

if ((_num == 1) or (_num == 2)) then {
	[[1, _num]] call mission_fnc_modif_var_bdd;
};
