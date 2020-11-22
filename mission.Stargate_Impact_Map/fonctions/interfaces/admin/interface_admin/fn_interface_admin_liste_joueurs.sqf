
private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;
private _bouton_white_liste = (findDisplay 12000) displayCtrl 12005;
private _bouton_tuer_player = (findDisplay 12000) displayCtrl 12011;
private _text_xp = (findDisplay 12000) displayCtrl 12006;
private _enter_xp = (findDisplay 12000) displayCtrl 12007;
private _bouton_add_xp = (findDisplay 12000) displayCtrl 12012;
private _bouton_delete_xp = (findDisplay 12000) displayCtrl 12013;
private _bouton_tp_joueur_admin = (findDisplay 12000) displayCtrl 12014;
private _bouton_tp_admin_joueur = (findDisplay 12000) displayCtrl 12015;

private _index = lbCurSel _liste_joueurs;

if (_index != -1) then {
	private _joueurs = allPlayers;
	private _joueur = _joueurs select _index;

	_bouton_white_liste ctrlEnable true;
	_bouton_tuer_player ctrlEnable true;
	_text_xp ctrlEnable true;
	_enter_xp ctrlEnable true;
	_bouton_add_xp ctrlEnable true;
	_bouton_delete_xp ctrlEnable true;
	_bouton_tp_joueur_admin ctrlEnable true;
	_bouton_tp_admin_joueur ctrlEnable true;

	if ((["wl soldat", _joueur] call mission_fnc_getBDD) == 1) then {
		_bouton_white_liste ctrlSetText format [localize "STR_admin_bouton_wl_soldat", "ON"];
	} else {
		_bouton_white_liste ctrlSetText format [localize "STR_admin_bouton_wl_soldat", "OFF"];
	};

	_text_xp ctrlSetText format [localize "STR_admin_text_xp_joueur", (["xp", _joueur] call mission_fnc_getBDD)];
} else {
	_bouton_white_liste ctrlEnable false;
	_bouton_tuer_player ctrlEnable false;
	_text_xp ctrlEnable false;
	_enter_xp ctrlEnable false;
	_bouton_add_xp ctrlEnable false;
	_bouton_delete_xp ctrlEnable false;
	_bouton_tp_joueur_admin ctrlEnable false;
	_bouton_tp_admin_joueur ctrlEnable false;
};


