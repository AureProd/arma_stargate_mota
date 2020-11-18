
// fonction name : player_fnc_setClasse
// parmettres : [numero classe]

/* 
Classes :
	1 = archeologue
	2 = scientifique
	3 = soldat
*/

private _num = param [0];

if ((_num == 1) or (_num == 2) or (_num == 3)) then {
	[[0, _num]] call mission_fnc_modif_var_bdd;
};
