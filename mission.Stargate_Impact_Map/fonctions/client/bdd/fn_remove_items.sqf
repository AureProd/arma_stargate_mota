
// [id_item, count_item, player] call mission_fnc_remove_items

private _getItemWithId = {
	private _itemId = param [0];

	private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

	private _newObjet = _liste_objets_config select (_liste_objets_config findIf {
		(_x select 0) == _itemId
	});

	_newObjet
};

private _itemId = param[0];
private _itemCount = param[1, 1];
private _player = param[2, player];

if (!([_itemId, _itemCount, _player] call mission_fnc_has_item)) exitWith {
	hint localize "STR_erreur";
};

if ((_itemId == 2) or (_itemId == 4) or ((([_itemId] call _getItemWithId) select 4) == 7)) then {
	for "_i" from 0 to _itemCount do {
		private _inv = ["inventaire virtuel", _player] call mission_fnc_getBDD;
		private _index = _inv findIf {(_x select 0) == _itemId};

		[_itemId, false, _index, _player] call mission_fnc_supprime_item;
	};
} else {
	for "_i" from 0 to _itemCount do {
		[_itemId, true, 0, _player] call mission_fnc_supprime_item;
	};
}



