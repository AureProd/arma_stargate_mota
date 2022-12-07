

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

// { id / xp / nom / lien image / type objets / poid / ismilitaire}
private _liste_objets_config = nil;

if ((_playerBdd select 1) == 2) then 
{
	private _nom_config = nil;
	
	switch (isMilitaire) do {
		case 1: { 
			_nom_config = "guns_tauri_militaire";
		};
		case 2: { 
			_nom_config = "guns_tauri_gendarme";
		};
		default { 
			_nom_config = "guns_tauri";
		};
	};

	switch (bouton_A_OK_bis) do 
	{
		case 1: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> _nom_config >> "armes");
		};
		case 2: 
		{
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> _nom_config >> "chargeurs");
		};
		case 3: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> _nom_config >> "viseurs");
		};
	};
} 
else 
{
	private _nom_config = nil;
	
	switch (isMilitaire) do {
		case 1: { 
			_nom_config = "guns_goauld_militaire";
		};
		case 2: { 
			_nom_config = "guns_goauld_gendarme";
		};
		default { 
			_nom_config = "guns_goauld";
		};
	};

	switch (bouton_A_OK_bis) do 
	{
		case 1: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> _nom_config >> "armes");
		};
		case 2: 
		{
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> _nom_config >> "chargeurs");
		};
		case 3: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> _nom_config >> "viseurs");
		};
	};
};

private _liste_objets = (findDisplay 8000) displayCtrl 8009;
private _index = lbCurSel _liste_objets;

if (_index != -1) then 
{
	private _objet = _liste_objets_config select _index;

	private _paiement = [(_objet select 2)] call mission_fnc_paiement;
	if (_paiement) then 
	{
		switch (bouton_A_OK_bis) do 
		{
			case 1: 
			{ 
				call compile(_objet select 5);
			};
			case 2: 
			{
				call compile(_objet select 5);
			};
			case 3: 
			{ 
				call compile(_objet select 4);
			};
		};
	};
};
