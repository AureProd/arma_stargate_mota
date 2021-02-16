
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
		closeDialog 1;

		[_quete select 0] call mission_fnc_add_quetes_actives;

		[_quete select 0] call mission_fnc_quetesActives;
	};
};
