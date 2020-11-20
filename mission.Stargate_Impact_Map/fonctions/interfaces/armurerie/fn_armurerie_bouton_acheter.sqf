

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

// { id / xp / nom / lien image / type objets / poid / ismilitaire}
private _liste_objets_config = nil;

if ((_playerBdd select 1) == 2) then 
{
	switch (bouton_A_OK_bis) do 
	{
		case 1: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> "guns_tauri" >> "armes");
		};
		case 2: 
		{
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> "guns_tauri" >> "chargeurs");
		};
		case 3: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> "guns_tauri" >> "viseurs");
		};
	};
} 
else 
{
	switch (bouton_A_OK_bis) do 
	{
		case 1: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> "guns_goauld" >> "armes");
		};
		case 2: 
		{
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> "guns_goauld" >> "chargeurs");
		};
		case 3: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> "guns_goauld" >> "viseurs");
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
