
private _liste_objets = (findDisplay 3000) displayCtrl 3002;
private _liste_players = (findDisplay 3000) displayCtrl 3006;

private _bouton_utiliser = (findDisplay 3000) displayCtrl 3011;
private _bouton_donner = (findDisplay 3000) displayCtrl 3012;
private _bouton_supprimer = (findDisplay 3000) displayCtrl 3013;

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaire_virtuel = _playerBdd select 8;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

if ((lbCurSel _liste_objets) == -1) then 
{
	_bouton_utiliser ctrlEnable false;
	_bouton_donner ctrlEnable false;
	_bouton_supprimer ctrlEnable false;
}
else
{
	if ((lbCurSel _liste_players) == -1) then 
	{
		_bouton_donner ctrlEnable false;
	}
	else
	{
		_bouton_donner ctrlEnable true;
	};

	private _index = lbCurSel _liste_objets;
	private _tab = (_inventaire_virtuel select _index);
	{
		if ((_tab select 0) == (_x select 0)) then
		{
			if (
				((_x select 4) == 1) or 
				((_x select 4) == 2) or 
				((_x select 4) == 5) or 
				((_x select 4) == 6) or
				((_x select 4) == 9) or 
				((_x select 4) == 11) or 
				((_x select 4) == 13)
			) then 
			{
				_bouton_utiliser ctrlEnable true;
			}
			else
			{
				_bouton_utiliser ctrlEnable false;
			};

			_bouton_supprimer ctrlEnable true;
		};
	} forEach _liste_objets_config;
};
