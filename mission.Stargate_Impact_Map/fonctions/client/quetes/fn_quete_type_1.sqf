
// 		if ([] call mission_fnc_is_tauri) then {
// 			[1, 0] call mission_fnc_add_planetes;
// 			[1, 1] call mission_fnc_add_planetes;
// 		} else {
// 			[82, 0] call mission_fnc_add_planetes;
// 			[82, 1] call mission_fnc_add_planetes;
// 		};

// [tableau_quête, partie_code(0/1/2)] call mission_fnc_quete_type_1

private _tabQuete = param [0];
private _partieCode = param [1];

switch (_partieCode) do {
	case 0: { // lancement quête
		missionNamespace setVariable [format ["quete_%1_type_1_player_%2", (_tabQuete select 0), (getPlayerUID player)], false];
	};
	case 1: { // addAction quête
		hint ((_tabQuete select 7) select 0);

		missionNamespace setVariable [format ["quete_%1_type_1_player_%2", (_tabQuete select 0), (getPlayerUID player)], true];
	};
	case 2: { // fin quête 
		if (missionNamespace getVariable [format ["quete_%1_type_1_player_%2", (_tabQuete select 0), (getPlayerUID player)], false]) then {
			hint format [localize "STR_message_validation_quete", (_tabQuete select 2)]; // message validation quête

			[_tabQuete select 0] call mission_fnc_remove_quetes_actives;
 			[_tabQuete select 0] call mission_fnc_add_quetes_faites;

			[_tabQuete] call mission_fnc_giveQueteRecompence;
		} else {
			hint format [localize "STR_message_invalidation_quete", (_tabQuete select 2)]; // message invalidation quête
		};
	};
};
