
private _description = (findDisplay 10000) displayCtrl 10004;
private _recompence = (findDisplay 10000) displayCtrl 10005;
private _objectif = (findDisplay 10000) displayCtrl 10006;

private _listeBox = (findDisplay 10000) displayCtrl 10003;
private _index = lbCurSel _listeBox;

if (_index != -1) then 
{
	// { id / nom / description / objectif / points XP gagnés / is secondaire (0 si principale / 1 si secondaire) / fonction }
	private _quete = liste_joueurs_groupe select _index;

	_description ctrlSetText (_quete select 2);
	_recompence ctrlSetText format ["Récompence : %1XP", (_quete select 4)];
	_objectif ctrlSetText format ["Objectif : %1", (_quete select 3)];
};
