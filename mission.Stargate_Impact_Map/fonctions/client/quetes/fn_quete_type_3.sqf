
// [tableau_quête, partie_code(0/1/2)] call mission_fnc_quete_type_3

private _tabQuete = param [0];
private _partieCode = param [1];

switch (_partieCode) do {
	case 0: { // lancement quête
		missionNamespace setVariable [format ["quete_%1_type_3_player_%2", (_tabQuete select 0), (getPlayerUID player)], false];
		
		[_tabQuete] spawn {
			private _tabQuete = param [0];

			{
				(call compile (_x select 0)) hideObject false;

				waitUntil { ((player distance2D (call compile (_x select 0))) < ((_tabQuete select 7) select 1)) or (!([(_tabQuete select 0)] call mission_fnc_has_quetes_actives)) };

				(call compile (_x select 0)) hideObject true;

				hint (_x select 1);
			} forEach ((_tabQuete select 7) select 0);

			missionNamespace setVariable [format ["quete_%1_type_3_player_%2", (_tabQuete select 0), (getPlayerUID player)], true];
		};
	};
	case 1: { // fin quête
		hint format [localize "STR_message_validation_quete", (_tabQuete select 2)]; // message validation quête

		[_tabQuete select 0] call mission_fnc_remove_quetes_actives;
		[_tabQuete select 0] call mission_fnc_add_quetes_faites;

		[_tabQuete] call mission_fnc_giveQueteRecompence;
	};
};

