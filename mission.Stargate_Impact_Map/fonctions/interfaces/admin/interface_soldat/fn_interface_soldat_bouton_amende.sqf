
private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;

private _ctrl_valeur_amende = (findDisplay 12000) displayCtrl 12033;
private _valeur_amende = ctrlText _ctrl_valeur_amende;

_valeur_amende = [_valeur_amende] call mission_fnc_to_number;

private _index_liste = lbCurSel _liste_joueurs_proches;

if (_index_liste != -1) then {
	private _player = liste_joueurs_groupe select _index_liste;

	[_valeur_amende, _player] remoteExec ["mission_fnc_popup_ammende", _player];
};
