
private _team = nil;
private _teams = [];
private _teams_bis = [];

{
	if ((getPlayerUID player) in _x) then 
	{
		_team = _x;
	}
	else
	{
		_teams_bis pushBack _x;
	};
} forEach (missionNamespace getVariable ["team", []]);

{
	if (_x != (getPlayerUID player)) then 
	{
		_teams pushBack _x;
	};
} forEach _team;

[player] join grpNull;

if ((count _teams) > 1) then 
{
	_teams_bis pushBack _teams;
}
else
{
	{
		private _joueurUid = _x;
		private _joueur = nil;

		{
			if ((getPlayerUID _x) == _joueurUid) then {
				_joueur = _x;
			};
		} forEach allPlayers;

		_joueur setVariable ["inTeam", false, true];
		[_joueur] join grpNull;
	} forEach _teams;
};

player setVariable ["inTeam", false, true];
missionNamespace setVariable ["team", _teams_bis, true];
