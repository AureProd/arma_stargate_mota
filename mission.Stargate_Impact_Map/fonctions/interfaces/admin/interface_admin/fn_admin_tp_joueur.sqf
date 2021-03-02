
private _choix = param [0];

private _joueur = [] call mission_fnc_admin_get_player;

if (((vehicle _joueur) != _joueur) or ((vehicle player) != player)) exitWith {
	hint localize "STR_admin_pas_tp_vehicule";
};

switch (_choix) do {
	case 1: { // TP joueur vers admin
		private _pos = getPosATL player;
		_joueur setPos _pos;
	};
	case 2: { // TP admin vers joueur 
		private _pos = getPosATL _joueur;
		player setPos _pos;
	};
};