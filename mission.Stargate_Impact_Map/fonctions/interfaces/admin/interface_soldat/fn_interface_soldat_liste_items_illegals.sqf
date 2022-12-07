
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;
private _bouton_detruire = (findDisplay 12000) displayCtrl 12010;

private _bouton_amende = (findDisplay 12000) displayCtrl 12032;
private _prix_amende = (findDisplay 12000) displayCtrl 12033;

private _select_licenses_items = (findDisplay 12000) displayCtrl 12034;
private _index_licenses_items = lbCurSel _select_licenses_items;

private _index_liste_items = lbCurSel _liste_items_illegals;

private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;

private _index_liste = lbCurSel _liste_joueurs_proches;

if (_index_liste != -1) then {
	private _player = liste_joueurs_groupe select _index_liste;

	switch (_index_licenses_items) do {
		case 0: { 
			if (_index_liste_items != -1) then {
				_bouton_detruire ctrlEnable true;
			} else {
				_bouton_detruire ctrlEnable false;
			};
		};
		case 1: {
			if (_index_liste_items != -1) then {
				private _licences = [];

				{
					if ((_x select 0) in (["licences", _player] call mission_fnc_getBDD)) then {
						_licences pushBack _x;
					};
				} forEach (getArray(missionConfigFile >> "stargate" >> "licences" >> "licences_tableau"));

				private _licence = _licences select _index_liste_items;

				if ((_licence select 4) == 1) then {
					_bouton_detruire ctrlEnable true;
				} else {
					_bouton_detruire ctrlEnable false;
				};
			} else {
				_bouton_detruire ctrlEnable false;
			};
		};
	};
};



