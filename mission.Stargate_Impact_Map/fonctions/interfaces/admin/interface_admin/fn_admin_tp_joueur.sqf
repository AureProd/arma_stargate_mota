
private _choix = param [0];

private _joueur = [] call mission_fnc_admin_get_player;

switch (_choix) do {
	case 1: { // TP joueur vers admin
		private _pos = getPos player;
		_joueur setPos _pos;
	};
	case 2: { // TP admin vers joueur 
		private _pos = getPos _joueur;
		player setPos _pos;
	};
};