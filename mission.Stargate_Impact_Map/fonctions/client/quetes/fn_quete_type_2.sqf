
// [tableau_quête, partie_code(0/1/2)] call mission_fnc_quete_type_2

private _tabQuete = param [0];
private _partieCode = param [1];

switch (_partieCode) do {
	case 0: { // lancement quête
		private _tab_items = ((_tabQuete select 7) select 0); // [[nb_items, id_item], [nb_items, id_item], [nb_items, id_item]]

		private _bool = true;
		private _itemsManquants = [];

		{
			if (!([(_x select 0), (_x select 1), player] call mission_fnc_has_item)) then {
				_bool = false;
			};
		} forEach _tab_items;

		if (_bool) then {
			{
				[(_x select 0), (_x select 1), player] call mission_fnc_remove_items;
			} forEach _tab_items;

			hint format [localize "STR_message_validation_quete", (_tabQuete select 2)]; // message validation quête

			[_tabQuete select 0] call mission_fnc_remove_quetes_actives;
 			[_tabQuete select 0] call mission_fnc_add_quetes_faites;

			[_tabQuete select 5] call mission_fnc_giveQueteRecompence;
		} else {
			hint format [localize "STR_message_manque_items_quete_type_2", (_tabQuete select 2)]; // message invalidation quête
		};
	};
};

