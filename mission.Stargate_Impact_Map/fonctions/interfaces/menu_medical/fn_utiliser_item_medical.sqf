
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaire_virtuel = _playerBdd select 8;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

private _liste_objets = (findDisplay 5000) displayCtrl 5005;
private _index = lbCurSel _liste_objets;

private _tab = (_inventaire_virtuel select (liste_joueurs_groupe select _index));
{
	if ((_tab select 0) == (_x select 0)) then
	{
		[_x, (liste_joueurs_groupe select _index), true] call mission_fnc_utiliser_item;
	};
} forEach _liste_objets_config;
