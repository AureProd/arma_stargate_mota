
// nom fichier : mission_fnc_set_damage_player;
// paramettres : [vie]

private _vie = param [0];

if (!ISINVICIBLE) then {
	player setDamage (1 - (_vie / 100));
};

