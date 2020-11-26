
private _bouton_add_xp = (findDisplay 12000) displayCtrl 12012;
private _bouton_delete_xp = (findDisplay 12000) displayCtrl 12013;

private _select_liste_bdd = (findDisplay 12000) displayCtrl 12020;
private _indexTypeBdd = lbCurSel _select_liste_bdd;

private _text_xp = (findDisplay 12000) displayCtrl 12006;
private _ajout_xp = (findDisplay 12000) displayCtrl 12007;

private _player = [] call mission_fnc_admin_get_player;

switch (_indexTypeBdd) do {
	case 0: { // XP
		_text_xp ctrlSetText format [localize "STR_admin_text_xp_joueur", (["xp", _player] call mission_fnc_getBDD)];

		_bouton_add_xp ctrlSetText (localize "STR_admin_bouton_add_xp");
		_bouton_delete_xp ctrlSetText (localize "STR_admin_bouton_delete_xp");

		_bouton_add_xp ctrlEnable true;
		_bouton_delete_xp ctrlEnable true;
	};
	case 1: { // LEVEL
		_text_xp ctrlSetText format [localize "STR_admin_text_level_joueur", (["level", _player] call mission_fnc_getBDD)];

		_bouton_add_xp ctrlSetText (localize "STR_admin_bouton_set_level");
		
		_bouton_add_xp ctrlEnable true;
		_bouton_delete_xp ctrlEnable false;
	};
	case 2: { // VIE
		_text_xp ctrlSetText format [localize "STR_admin_text_vie_joueur", (["vie", _player] call mission_fnc_getBDD), "%"];

		_bouton_add_xp ctrlSetText (localize "STR_admin_bouton_set_vie");
		
		_bouton_add_xp ctrlEnable true;
		_bouton_delete_xp ctrlEnable false;
	};
	case 3: { // FAIM
		_text_xp ctrlSetText format [localize "STR_admin_text_vie_joueur", (["faim", _player] call mission_fnc_getBDD), "%"];

		_bouton_add_xp ctrlSetText (localize "STR_admin_bouton_set_faim");
		
		_bouton_add_xp ctrlEnable true;
		_bouton_delete_xp ctrlEnable false;
	};
	case 4: { // SOIF
		_text_xp ctrlSetText format [localize "STR_admin_text_vie_joueur", (["soif", _player] call mission_fnc_getBDD), "%"];

		_bouton_add_xp ctrlSetText (localize "STR_admin_bouton_set_soif");
		
		_bouton_add_xp ctrlEnable true;
		_bouton_delete_xp ctrlEnable false;
	};
	case 5: { // UID
		_text_xp ctrlSetText format ["%1", (getPlayerUID _player)];
		_ajout_xp ctrlSetText format ["%1", (getPlayerUID _player)];

		_bouton_add_xp ctrlEnable false;
		_bouton_delete_xp ctrlEnable false;
	};
};


