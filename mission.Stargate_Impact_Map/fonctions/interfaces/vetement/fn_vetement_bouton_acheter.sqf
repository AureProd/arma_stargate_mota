
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

// { id / xp / nom / lien image / type objets / poid / ismilitaire}
private _liste_objets_config = nil;

if ((_playerBdd select 1) == 2) then 
{
	private _nom_config = nil;
	
	switch (isMilitaire) do {
		case 1: { 
			_nom_config = "vetements_tauri_militaire";
		};
		case 2: { 
			_nom_config = "vetements_tauri_grades";
		};
		case 3: { 
			_nom_config = "vetement_tauri_gendarme";
		};
		default { 
			_nom_config = "vetements_tauri";
		};
	};

	switch (bouton_A_OK_bis) do 
	{
		case 1: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "tenue");
		};
		case 2: 
		{
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "veste");
		};
		case 3: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "sac");
		};
		case 4: 
		{
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "casque");
		};
		case 5: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "lunette");
		};
	};
} 
else 
{
	private _nom_config = nil;
	
	switch (isMilitaire) do {
		case 1: { 
			_nom_config = "vetements_goauld_militaire";
		};
		case 2: { 
			_nom_config = "vetements_goauld_grades";
		};
		case 3: { 
			_nom_config = "vetement_goauld_gendarme";
		};
		default { 
			_nom_config = "vetements_goauld";
		};
	};

	switch (bouton_A_OK_bis) do 
	{
		case 1: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "tenue");
		};
		case 2: 
		{
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "veste");
		};
		case 3: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "sac");
		};
		case 4: 
		{
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "casque");
		};
		case 5: 
		{ 
			_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "lunette");
		};
	};
};

private _liste_objets = (findDisplay 9000) displayCtrl 9013;
private _index = lbCurSel _liste_objets;

if (_index != -1) then 
{
	private _objet = _liste_objets_config select _index;

	private _paiement = [(_objet select 2)] call mission_fnc_paiement;
	if (_paiement) then 
	{
		call compile(_objet select 4);
	};
};
