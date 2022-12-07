
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaire_virtuel = _playerBdd select 8;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

private _vie = _playerBdd select 5;
private _faim = _playerBdd select 6;
private _soif = _playerBdd select 7;

private _liste_objets = (findDisplay 3000) displayCtrl 3002;
private _index = lbCurSel _liste_objets;

private _fonction_bis_OK = false;
private _fonction_OK = true;

private _tab = (_inventaire_virtuel select _index);
{
	if ((_tab select 0) == (_x select 0)) then
	{
		[_x, _index] call mission_fnc_utiliser_item;
	};
} forEach _liste_objets_config;

[] call mission_fnc_actualise_menu_y;