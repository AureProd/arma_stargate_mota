
private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;
private _bouton_white_liste = (findDisplay 12000) displayCtrl 12005;

private _index = lbCurSel _liste_joueurs;

if (_index != -1) then {
	private _joueurs = allPlayers;
	private _joueur = _joueurs select _index;

	_bouton_white_liste ctrlEnable true;

	if ((["wl soldat", _joueur] call mission_fnc_getBDD) == 1) then {
		_bouton_white_liste ctrlSetText format [localize "STR_admin_bouton_wl_soldat", "ON"];
	} else {
		_bouton_white_liste ctrlSetText format [localize "STR_admin_bouton_wl_soldat", "OFF"];
	};
} else {
	_bouton_white_liste ctrlEnable false;
};


