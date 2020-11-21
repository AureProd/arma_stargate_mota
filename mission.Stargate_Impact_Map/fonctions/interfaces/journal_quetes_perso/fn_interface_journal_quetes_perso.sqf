
createDialog "menu_journal_quetes_bis";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 10000) displayCtrl 10001;

if ((_playerBdd select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_quetes\menu_journal_perso_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_quetes\menu_journal_perso.paa";
};

liste_joueurs_groupe = [];

private _config_quetes = nil;

/*	
	classes :
	1 = archeoloque
	2 = scientifique
	3 = soldat 
	races :
	1 = goauld
	2 = tauri	
*/
if ((_playerBdd select 1) == 2) then 
{
	switch (_playerBdd select 0) do 
	{
		case 1: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "archeologue_tauri");
		};
		case 2: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "scientifique_tauri");
		};
		case 3: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "soldat_tauri");
		};
	};
} 
else 
{
	switch (_playerBdd select 0) do 
	{
		case 1: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "archeologue_goauld");
		};
		case 2: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "scientifique_goauld");
		};
		case 3: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "soldat_goauld");
		};
	};
};

{
	if ([(_x select 0)] call mission_fnc_has_quetes_actives) then 
	{
		liste_joueurs_groupe pushBack _x;
	};
} forEach _config_quetes;

private _listeBox = (findDisplay 10000) displayCtrl 10003;

{
	switch (_x select 1) do {
		case 1: { 
			private _index = _listeBox lbAdd format ["%1", (_x select 3)];
			_listeBox lbsetColor [_index, [1, 1, 1, 1]]; // blanc
		};
	};
} forEach liste_joueurs_groupe;

_listeBox lbSetCurSel -1;

private _description = (findDisplay 10000) displayCtrl 10004;
private _recompence = (findDisplay 10000) displayCtrl 10005;
private _objectif = (findDisplay 10000) displayCtrl 10006;

_description ctrlSetText "";
_recompence ctrlSetText "";
_objectif ctrlSetText "";
