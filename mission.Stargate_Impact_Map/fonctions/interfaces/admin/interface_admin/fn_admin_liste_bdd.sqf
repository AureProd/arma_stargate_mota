
private _select_liste_bdd = (findDisplay 12000) displayCtrl 12020;
private _indexTypeBdd = lbCurSel _select_liste_bdd;

private _text_xp = (findDisplay 12000) displayCtrl 12006;

private _player = [] call mission_fnc_admin_get_player;

switch (_indexTypeBdd) do {
	case 0: { // XP
		_text_xp ctrlSetText format [localize "STR_admin_text_xp_joueur", (["xp", _player] call mission_fnc_getBDD)];
	};
	case 1: { // LEVEL
		_text_xp ctrlSetText format [localize "STR_admin_text_level_joueur", (["level", _player] call mission_fnc_getBDD)];
	};
	case 2: { // VIE
		_text_xp ctrlSetText format [localize "STR_admin_text_vie_joueur", (["vie", _player] call mission_fnc_getBDD)];
	};
	case 3: { // FAIM
		_text_xp ctrlSetText format [localize "STR_admin_text_vie_joueur", (["faim", _player] call mission_fnc_getBDD)];
	};
	case 4: { // SOIF
		_text_xp ctrlSetText format [localize "STR_admin_text_vie_joueur", (["soif", _player] call mission_fnc_getBDD)];
	};
};


