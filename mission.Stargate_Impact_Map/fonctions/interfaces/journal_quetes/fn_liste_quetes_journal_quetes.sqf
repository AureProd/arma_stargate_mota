
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _description = (findDisplay 10000) displayCtrl 10004;
private _recompence = (findDisplay 10000) displayCtrl 10005;
private _objectif = (findDisplay 10000) displayCtrl 10006;

private _listeBox = (findDisplay 10000) displayCtrl 10003;
private _index = lbCurSel _listeBox;

if (_index != -1) then 
{
	// { id / nom / description / objectif / points XP gagnés / is secondaire (0 si principale / 1 si secondaire) / fonction }
	private _quete = liste_joueurs_groupe select _index;

	if ((_quete select 0) in (_playerBdd select 11)) then
	{
		_description ctrlSetText (_quete select 2);
		_recompence ctrlSetText format ["Récompence : %1XP", (_quete select 4)];
		_objectif ctrlSetText format ["Objectif : %1", (_quete select 3)];
	}
	else
	{
		_listeBox lbSetCurSel -1;

		_description ctrlSetText "";
		_recompence ctrlSetText "";
		_objectif ctrlSetText "";
	};
};
