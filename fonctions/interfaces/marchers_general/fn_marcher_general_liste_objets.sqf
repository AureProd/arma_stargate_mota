
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaire_virtuel = _playerBdd select 8;

/* 
	{ 
		id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / 
		is tauri (1 = tauri / 0 = pas tauri / 2 = tauri + gouald) / 
		(si nourriture ou boisson ou raisin -> valeur que ca te rend (en %)) 
		(si medicament ou blessure -> partie du corp (0 = tout corp / 1 = tete / 2 = ventre / 3 = tete et ventre / 4 = bras / 5 = jambes))
	}
*/ 
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

private _liste_objets = (findDisplay 20000) displayCtrl 20005;
private _bouton_acheter = (findDisplay 20000) displayCtrl 20002;
private _index = lbCurSel _liste_objets;

private _tab = [];

{
	if (bouton_A_OK) then {
		if ((_playerBdd select 1) == 2) then // is tauri
		{
			if (((_x select 8) == 1) or ((_x select 8) == 2)) then // verif si objet for tauri
			{
				if ((_x select 6) == 0) then // verif si pas militaire
				{
					if ((_x select 4) == 7) then // verif si objet is outil
					{
						_tab pushBack _x;
					};
				};
			};
		}
		else // is goauld
		{
			if (((_x select 8) == 0) or ((_x select 8) == 2)) then // verif si objet for goauld
			{
				if ((_x select 6) == 0) then // verif si pas militaire
				{
					if ((_x select 4) == 7) then // verif si objet is outil
					{
						_tab pushBack _x;
					};
				};
			};
		};
	} else {
		{
			private _tab_bis = _x;
			{
				if ((_tab_bis select 0) == (_x select 0)) then
				{
					_tab pushBack _x;
				};
			} forEach _liste_objets_config;
		} forEach _inventaire_virtuel;
	};
} forEach _liste_objets_config;

if (_index != -1) then 
{
	private _objet = _tab select _index;

	if (bouton_A_OK) then {
		if ((_objet select 1) <= (_playerBdd select 4)) then 
		{
			_bouton_acheter ctrlEnable true;
		}
		else
		{
			_bouton_acheter ctrlEnable false;
			_liste_objets lbSetCurSel -1;
		};
	} else {
		_bouton_acheter ctrlEnable false;
		_liste_objets lbSetCurSel -1;
	};
}
else
{
	_bouton_acheter ctrlEnable false;
};