
// fonction name : mission_fnc_quitter_team
// parmettres : [player uid]

private _joueur_UID = param [0, (getPlayerUID player)];

if ([_joueur_UID] call mission_fnc_is_in_team) then {
	private _team = [_joueur_UID] call mission_fnc_get_team; // []

	private _index = _team find _joueur_UID;
	_team deleteAt _index;

	private _joueur = [_joueur_UID] call mission_fnc_get_player_with_uid;

	[_joueur] join grpNull;

	if ((count _team) == 1) then 
	{
		private _joueur_team_UID = _team select 0;

		private _joueur_team = [_joueur_team_UID] call mission_fnc_get_player_with_uid;

		[_joueur_team] join grpNull;

		[_team] call mission_fnc_delete_team;
	} else {
		[_team] call mission_fnc_set_team;
	};
};

/* private _team = nil;
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

		//_joueur setVariable ["inTeam", false, true];
		[_joueur] join grpNull;
	} forEach _teams;
};

//player setVariable ["inTeam", false, true];
missionNamespace setVariable ["team", _teams_bis, true]; */
