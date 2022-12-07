
private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;
private _bouton_white_liste = (findDisplay 12000) displayCtrl 12005;

private _index = lbCurSel _liste_joueurs;

private _select_liste_bdd = (findDisplay 12000) displayCtrl 12020;
private _indexTypeBdd = lbCurSel _select_liste_bdd;

if (_index != -1) then {
	private _joueurs = allPlayers;
	private _joueur = _joueurs select _index;

	if ((["wl soldat", _joueur] call mission_fnc_getBDD) == 1) then {
		["wl soldat", 0, _joueur] call mission_fnc_setBDD_distant;
	} else {
		["wl soldat", 1, _joueur] call mission_fnc_setBDD_distant;
	};

	[_indexTypeBdd] call mission_fnc_interface_admin_liste_joueurs;
};


