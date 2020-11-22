
private _listbox_players = (findDisplay 2000) displayCtrl 2002;
private _index = lbCurSel _listbox_players;
private _joueurUid = liste_joueurs_groupe select _index;
private _joueur = nil;

{
	if ((getPlayerUID _x) == _joueurUid) then {
		_joueur = _x;
	};
} forEach allPlayers;

private _ok = false;

{
	if ((getPlayerUID player) in _x) then 
	{
		if ((count _x) >= 5) then 
		{
			_ok = true;
		};
	};
} forEach (missionNamespace getVariable ["team", []]);

if (!_ok) then 
{
	private _variableInvitations_bis = _joueur getVariable ["invitePar", []];

	if (!((getPlayerUID player) in _variableInvitations_bis)) then 
	{
		_variableInvitations_bis pushBack (getPlayerUID player);
		_joueur setVariable ["invitePar", _variableInvitations_bis, true];
	};
};

[true] spawn mission_fnc_interface_groupe;