
// { id quete / id quete }
private _liste_quetes = param [0, nil];
private _nom_liste_quete = param [1, nil];

createDialog "menu_journal_quetes";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 10000) displayCtrl 10001;

if ((_playerBdd select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_quetes\menu_journal_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_quetes\menu_journal.paa";
};

liste_joueurs_groupe = [];

{
	if ((_x select 0) in _liste_quetes) then 
	{
		liste_joueurs_groupe pushBack _x;
	};
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> _nom_liste_quete));

private _listeBox = (findDisplay 10000) displayCtrl 10003;

{
	if ((_x select 0) in (_playerBdd select 11)) then 
	{
		if ((_x select 5) == 0) then 
		{
			private _index = _listeBox lbAdd format ["%1", (_x select 1)];
			_listeBox lbsetColor [_index, [1, 1, 0, 1]]; // jaune
		} 
		else 
		{
			private _index = _listeBox lbAdd format ["%1", (_x select 1)];
			_listeBox lbsetColor [_index, [0.5873, 0, 1, 1]]; // violet
		};
	}
	else
	{
		if (((_x select 0) in (_playerBdd select 10)) or ((_x select 0) in (_playerBdd select 13))) then
		{
			private _index = _listeBox lbAdd format ["%1", (_x select 1)];
			_listeBox lbsetColor [_index, [1, 0, 0, 1]]; // rouge
		}
		else
		{
			private _index = _listeBox lbAdd format ["%1", (_x select 1)];
			_listeBox lbsetColor [_index, [0, 0, 1, 1]]; // bleu
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
