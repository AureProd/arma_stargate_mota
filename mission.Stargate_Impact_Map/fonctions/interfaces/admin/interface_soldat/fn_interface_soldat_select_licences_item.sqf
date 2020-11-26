
private _select_licenses_items = (findDisplay 12000) displayCtrl 12034;
private _index_licenses_items = lbCurSel _select_licenses_items;

private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;
private _bouton_detruire = (findDisplay 12000) displayCtrl 12010;

private _index_liste = lbCurSel _liste_joueurs_proches;

lbClear _liste_items_illegals;

if (_index_liste != -1) then {
	switch (_index_licenses_items) do {
		case 0: { // items illegals			
			private _player = liste_joueurs_groupe select _index_liste;

			private _inventaire_joueur = ["inventaire virtuel", _player] call mission_fnc_getBDD;

			private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

			{
				private _tab = _x;
				{
					if ((_tab select 0) == (_x select 0)) then 
					{
						if ((_x select 10) == 1) then {
							private _index = _liste_items_illegals lbAdd (format ["%1 [x%2]", (_x select 2), (_tab select 1)]);
							_liste_items_illegals lbSetPicture [_index, (_x select 3)];
						};
					};
				} forEach _liste_objets_config;
			} forEach _inventaire_joueur;

			_bouton_detruire ctrlEnable false;
		};
		case 1: { // licenses
			private _player = liste_joueurs_groupe select _index_liste;

			{
				if ((_x select 0) in (["licences", _player] call mission_fnc_getBDD)) then {
					private _index = _liste_items_illegals lbAdd (_x select 1);
					_liste_items_illegals lbSetPicture [_index, (_x select 2)];
				};
			} forEach (getArray(missionConfigFile >> "stargate" >> "licences" >> "licences_tableau"));
		
			_bouton_detruire ctrlEnable false;
		};
	};
};

_liste_items_illegals lbSetCurSel -1;


