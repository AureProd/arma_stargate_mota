
private _description = (findDisplay 10000) displayCtrl 10004;
private _recompence = (findDisplay 10000) displayCtrl 10005;
private _objectif = (findDisplay 10000) displayCtrl 10006;

private _listeBox = (findDisplay 10000) displayCtrl 10003;
private _index = lbCurSel _listeBox;

if (_index != -1) then 
{
	private _quete = liste_joueurs_groupe select _index;

	if (((_quete select 8) call mission_fnc_has_quetes_faites) and ((['level'] call mission_fnc_getBDD) >= (_quete select 9))) then
	{
		_description ctrlSetText (_quete select 3);
		_recompence ctrlSetText format ["Récompence : %1XP", (_quete select 5)];
		_objectif ctrlSetText format ["Objectif : %1", (_quete select 4)];
	}
	else
	{
		_listeBox lbSetCurSel -1;

		_description ctrlSetText "";
		_recompence ctrlSetText "";
		_objectif ctrlSetText "";
	};
};
