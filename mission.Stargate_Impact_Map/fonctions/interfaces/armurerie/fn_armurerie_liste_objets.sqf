
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
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