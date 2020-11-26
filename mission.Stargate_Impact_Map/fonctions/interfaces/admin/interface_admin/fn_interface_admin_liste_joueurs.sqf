
private _index_select_liste_bdd = param [0, 0];

private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;
private _bouton_white_liste = (findDisplay 12000) displayCtrl 12005;
private _bouton_tuer_player = (findDisplay 12000) displayCtrl 12011;
private _text_xp = (findDisplay 12000) displayCtrl 12006;
private _enter_xp = (findDisplay 12000) displayCtrl 12007;
private _bouton_add_xp = (findDisplay 12000) displayCtrl 12012;
private _bouton_delete_xp = (findDisplay 12000) displayCtrl 12013;
private _bouton_tp_joueur_admin = (findDisplay 12000) displayCtrl 12014;
private _bouton_tp_admin_joueur = (findDisplay 12000) displayCtrl 12015;
private _bouton_reset_bdd = (findDisplay 12000) displayCtrl 12021;
private _select_liste_bdd = (findDisplay 12000) displayCtrl 12020;
private _bouton_mode_spec = (findDisplay 12000) displayCtrl 12023;
private _bouton_kick = (findDisplay 12000) displayCtrl 12031;

private _index = lbCurSel _liste_joueurs;

if (_index != -1) then {
	private _joueurs = allPlayers;
	private _joueur = _joueurs select _index;

	_bouton_white_liste ctrlEnable true;
	_bouton_tuer_player ctrlEnable true;
	_text_xp ctrlShow true;
	_enter_xp ctrlShow true;
	_bouton_tp_joueur_admin ctrlEnable true;
	_bouton_tp_admin_joueur ctrlEnable true;
	_bouton_reset_bdd ctrlEnable true;
	_select_liste_bdd ctrlShow true;
	_bouton_mode_spec ctrlEnable true;
	_bouton_kick ctrlEnable true;

	lbClear _select_liste_bdd;

	_select_liste_bdd lbAdd "XP"; // 0
	_select_liste_bdd lbAdd "LEVEL"; // 1
	_select_liste_bdd lbAdd (localize "STR_vie"); // 2
	_select_liste_bdd lbAdd (localize "STR_faim"); // 3
	_select_liste_bdd lbAdd (localize "STR_soif"); // 4
	_select_liste_bdd lbAdd (localize "STR_uid"); // 5

	_select_liste_bdd lbSetCurSel _index_select_liste_bdd;

	[] call mission_fnc_admin_liste_bdd;

	if ((["wl soldat", _joueur] call mission_fnc_getBDD) == 1) then {
		_bouton_white_liste ctrlSetText format [localize "STR_admin_bouton_wl_soldat", "ON"];
	} else {
		_bouton_white_liste ctrlSetText format [localize "STR_admin_bouton_wl_soldat", "OFF"];
	};

	if (SPECMODE) then {
		_bouton_mode_spec ctrlSetText format [localize "STR_admin_on_off_spec_mode", "ON"];
	} else {
		_bouton_mode_spec ctrlSetText format [localize "STR_admin_on_off_spec_mode", "OFF"];
	};

	//_text_xp ctrlSetText format [localize "STR_admin_text_xp_joueur", (["xp", _joueur] call mission_fnc_getBDD)];


} else {
	_bouton_white_liste ctrlEnable false;
	_bouton_tuer_player ctrlEnable false;
	_text_xp ctrlShow false;
	_enter_xp ctrlShow false;
	_bouton_add_xp ctrlEnable false;
	_bouton_delete_xp ctrlEnable false;
	_bouton_tp_joueur_admin ctrlEnable false;
	_bouton_tp_admin_joueur ctrlEnable false;
	_bouton_reset_bdd ctrlEnable false;
	_select_liste_bdd ctrlShow false;
	_bouton_mode_spec ctrlEnable false;
	_bouton_kick ctrlEnable false;
};


