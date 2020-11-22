
private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;

private _index = lbCurSel _liste_joueurs;

if (_index != -1) exitWith {
	hint localize "STR_erreur";
};

private _joueurs = allPlayers;
private _joueur = _joueurs select _index;

joueur;


