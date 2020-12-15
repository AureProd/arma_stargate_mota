
private _liste_vehicules = (findDisplay 30000) displayCtrl 30001;
private _bouton_louer = (findDisplay 30000) displayCtrl 30004;
private _bouton_sortir = (findDisplay 30000) displayCtrl 30005;
private _bouton_acheter = (findDisplay 30000) displayCtrl 30006;

// liste_joueurs_groupe = [[valeur_action, (tableau du vehicule)], [valeur_action, (tableau du vehicule)]]
// |--> valeur_action = (0 pour louer, 1 pour achat, 2 pour sortir, 3 pour pas level)
private _index = lbCurSel _liste_vehicules;

if (_index != -1) then {
	private _tab = liste_joueurs_groupe select _index;

	switch (_tab select 0) do {
		case 0: { // script louer
			[] call mission_fnc_garage_bouton_louer;
		};
		case 1: { // script acheter
			[] call mission_fnc_garage_bouton_acheter;
		};
		case 2: { // script sortir
			[] call mission_fnc_garage_bouton_sortir;
		};
		case 3: {}; // ne rien faire car le joueur n'a pas le level
	};
};