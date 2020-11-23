
private _choix = param [0];

private _entrer_ajout = (findDisplay 12000) displayCtrl 12007;
private _valeur_entrer_ajout = ctrlText _entrer_ajout;

_valeur_entrer_ajout = [_valeur_entrer_ajout] call mission_fnc_to_number;

private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;
private _index = lbCurSel _liste_joueurs;

if (_index != -1) then {
	private _joueurs = allPlayers;
	private _joueur = _joueurs select _index;

	switch (_choix) do {
		case 1: { // ajout xp
			private _ajout = (["xp", _joueur] call mission_fnc_getBDD) + _valeur_entrer_ajout;

			["xp", _ajout, _joueur] call mission_fnc_setBDD_distant;
		};
		case 2: { // suppression xp
			private _ajout = (["xp", _joueur] call mission_fnc_getBDD) - _valeur_entrer_ajout;

			["xp", _ajout, _joueur] call mission_fnc_setBDD_distant;
		};
	};

	[] call mission_fnc_interface_admin_liste_joueurs;
};


