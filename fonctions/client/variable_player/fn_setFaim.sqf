
// fonction name : player_fnc_setFaim
// parmettres : [% faim]


private _num = param [0];

[[6, _num]] call mission_fnc_modif_var_bdd;
