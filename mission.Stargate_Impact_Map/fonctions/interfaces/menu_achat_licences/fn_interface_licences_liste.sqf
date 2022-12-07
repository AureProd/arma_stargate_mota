
private _liste = (findDisplay 60000) displayCtrl 60002;

private _index = lbCurSel _liste;

if (_index != -1) then {
	// liste_joueurs_groupe = [[valeur_liste, licences config], [valeur_liste, licences config]]
	// |--> valeur_liste = (0 si deja possede, 1 si achetable, 2 si pas level) 
	private _tab = liste_joueurs_groupe select _index;

	switch (_tab select 0) do {
		case 0: { 
			_liste lbSetCurSel -1;
		};
		case 1: {};
		case 2: { 
			_liste lbSetCurSel -1;
		};
	};
};