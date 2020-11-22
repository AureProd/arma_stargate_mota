
private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;

private _index_liste = lbCurSel _liste_joueurs_proches;

if (_index_liste != -1) then {
	private _player = liste_joueurs_groupe select _index_liste;

	private _inventaire_joueur = ["inventaire virtuel", _player] call mission_fnc_getBDD;

	private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

	private _index_liste_items = lbCurSel _liste_items_illegals;

	if (_index_liste_items != -1) then {
		private _items_illegals = [];

		{
			private _tab = _x;
			{
				if ((_tab select 0) == (_x select 0)) then 
				{
					if ((_x select 10) == 1) then {
						_items_illegals pushBack _tab;
					};
				};
			} forEach _liste_objets_config;
		} forEach _inventaire_joueur;

		private _tableau = _items_illegals select _index_liste_items;

		private _index_inventaire = _inventaire_joueur find _tableau;

		_inventaire_joueur deleteAt _index_inventaire;

		[] call mission_fnc_interface_soldat_liste_joueurs_proches;
	};
};

