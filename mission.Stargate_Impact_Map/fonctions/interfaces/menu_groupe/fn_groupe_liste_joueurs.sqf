
private _liste_joueurs = (findDisplay 2000) displayCtrl 2002;
private _bouton_rejoindre = (findDisplay 2000) displayCtrl 2006;
private _bouton_inviter = (findDisplay 2000) displayCtrl 2004;

private _index = lbCurSel _liste_joueurs;
private _joueurUid = liste_joueurs_groupe select _index;
private _joueur = nil;

{
	if ((getPlayerUID _x) == _joueurUid) then {
		_joueur = _x;
	};
} forEach allPlayers;

private _variableInvitations = player getVariable ["invitePar", []];

private _ok = false;

{
	if (((getPlayerUID _joueur) in _x) and ((getPlayerUID player) in _x)) then 
	{
		_ok = true;
	};
} forEach (missionNamespace getVariable ["team", []]);

if (!_ok) then 
{
	_bouton_inviter ctrlEnable true;
}
else
{
	_bouton_inviter ctrlEnable false;
};

if ((getPlayerUID _joueur) in _variableInvitations) then 
{
	_bouton_rejoindre ctrlEnable true;
}
else
{
	_bouton_rejoindre ctrlEnable false;
};