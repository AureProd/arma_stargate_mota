
// [tableau_quête, partie_code(0/1/2)] call mission_fnc_quete_type_4

private _tabQuete = param [0];
private _partieCode = param [1];

switch (_partieCode) do {
	case 0: { // lancement quête
		if (((_tabQuete select 7) select 1) == 0) then {
			hint format ["%1, %2", ((_tabQuete select 7) select 4), ((_tabQuete select 7) select 0)];
		} else {
			hint ((_tabQuete select 7) select 4);

			createDialog "menu_enigme";
			waitUntil {dialog};

			private _imageEnigme = (findDisplay 5000) displayCtrl 5003;
			_imageEnigme ctrlSetText ((_tabQuete select 7) select 0);

			private _liste = (findDisplay 5000) displayCtrl 5001;

			{
				if ([(_x select 0)] call mission_fnc_has_docs) then {
					_liste lbAdd (format ["%1", (_x select 1)]);
				};
			} forEach (getArray(missionConfigFile >> "docs_planetes" >> "documents" >> "liste"));
		};
	};
	case 1: {
		createDialog "popup_enigme";
		waitUntil {dialog};

		private _boutonValider = (findDisplay 5000) displayCtrl 5001;

		//missionNamespace setVariable [format ["type_4_player_%1", (getPlayerUID player)], _tabQuete];

		_boutonValider ctrlSetEventHandler ["buttonClick", format ["[%1, 2] call mission_fnc_quete_type_4", _tabQuete]];
	};
	case 2: {
		playSound 'button'; 

		private _reponse = ctrlText ((findDisplay 5000) displayCtrl 5003);
		private _bonneReponse = ((_tabQuete select 7) select 2);
		
		if (_reponse == _bonneReponse) then {
			closeDialog 1;

			hint format [localize "STR_bonne_reponse_enigme_quete", (_tabQuete select 2)]; // message validation quête

			[_tabQuete select 0] call mission_fnc_remove_quetes_actives;
			[_tabQuete select 0] call mission_fnc_add_quetes_faites;

			[_tabQuete] call mission_fnc_giveQueteRecompence;
		} else {
			hint localize "STR_mauvaise_reponse_enigme_quete";
		};
	};
};

