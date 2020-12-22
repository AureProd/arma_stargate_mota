
private _liste_objets = (findDisplay 8000) displayCtrl 8009;

if (!([2] call mission_fnc_has_licence)) exitWith {
	if ((lbCurSel _liste_objets) != -1) then {
		_liste_objets lbSetCurSel -1;
		
		hint localize "STR_pas_licences_porte_arme";
	};
};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
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

private _bouton_acheter = (findDisplay 8000) displayCtrl 8008;
private _index = lbCurSel _liste_objets;

if (_index != -1) then 
{
	private _objet = _liste_objets_config select _index;

	if ((_objet select 1) <= (_playerBdd select 4)) then 
	{
		_bouton_acheter ctrlEnable true;
	}
	else
	{
		_bouton_acheter ctrlEnable false;
		_liste_objets lbSetCurSel -1;
	};
}
else
{
	_bouton_acheter ctrlEnable false;
};