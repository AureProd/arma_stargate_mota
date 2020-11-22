
private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;

private _index_liste = lbCurSel _liste_joueurs_proches;

if (_index_liste != -1) then {
	private _player = liste_joueurs_groupe select _index_liste;

	private _inventaire_joueur = ["inventaire virtuel", _player] call mission_fnc_getBDD;

	private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

	lbClear _liste_items_illegals;

	{
		private _tab = _x;
		{
			if ((_tab select 0) == (_x select 0)) then 
			{
				if ((_x select 10) == 1) then {
					_liste_items_illegals lbAdd (format ["%1 [x%2]", (_x select 2), (_tab select 1)]);
				};
			};
		} forEach _liste_objets_config;
	} forEach _inventaire_virtuel;

	_liste_items_illegals lbSetCurSel -1;

	_bouton_detruire ctrlEnable false;
};
