
private _choix = param [0];

private _joueur = [] call mission_fnc_admin_get_player;

switch (_choix) do {
	case 1: { // TP joueur vers admin
		if (vehicle _joueur != _joueur) then {
			moveOut _joueur;
		};

		private _pos = getPos player;
		_joueur setPos _pos;
	};
	case 2: { // TP admin vers joueur 
		if (vehicle player != player) then {
			moveOut player;
		};

		private _pos = getPos _joueur;
		player setPos _pos;
	};
};