
private _listbox_players = (findDisplay 2000) displayCtrl 2002;
private _index = lbCurSel _listbox_players;
private _joueurUid = liste_joueurs_groupe select _index;

private _joueur = [_joueurUid] call mission_fnc_get_player_with_uid;

private _invitePar = [] call mission_fnc_get_invite_par_team;

if ((count ([_joueurUid] call mission_fnc_get_team)) < 5) then {
	if (_joueurUid in _invitePar) then {
		if ([] call mission_fnc_is_in_team) then {
			[] call mission_fnc_quitter_team;
		};

		if ([_joueurUid] call mission_fnc_is_in_team) then 
		{
			private _team = [_joueurUid] call mission_fnc_get_team;
			_team pushBack (getPlayerUID player);

			[_team] call mission_fnc_set_team;
		}
		else
		{
			private _team = [_joueurUid] call mission_fnc_get_team;
			_team pushBack (getPlayerUID player);

			[_team] call mission_fnc_add_team;
		};

		[player] join (group _joueur);

		[] call mission_fnc_create_reset_invitations;
		[_joueurUid, getPlayerUID player] call mission_fnc_remove_invitation;
	};

	[true] spawn mission_fnc_interface_groupe;
} else {
	hint localize "STR_team_trop_joueurs";
};



/* {
	if ((getPlayerUID _x) == _joueurUid) then {
		_joueur = _x;
	};
} forEach allPlayers;

private _invitePar = player getVariable ["invitePar", []];
private _invitePar_bis = [];

private _inviteParJoueur = _joueur getVariable ["invitePar", []];
private _inviteParJoueur_bis = [];

private _team = nil;
private _hasTeam = false;
private _teams = [];

if ([] call mission_fnc_is_in_team) then 
{
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

	if ((count _teams) > 1) then 
	{
		_teams_bis pushBack _teams;
	};
	
	//player setVariable ["inTeam", false, true];
	missionNamespace setVariable ["team", _teams_bis, true];
};

if ((getPlayerUID _joueur) in _invitePar) then 
{
	{
		if ((_x select 0) == (getPlayerUID _joueur)) then 
		{
			_hasTeam = true;

			_team = _x;
			_team pushBack (getPlayerUID player); 
			_teams pushBack _team;
		}
		else
		{
			_teams pushBack _x;
		};
	} forEach (missionNamespace getVariable ["team", []]);

	if (_hasTeam) then 
	{
		if ((count _team) >= 5) then 
		{
			{
				if ((getPlayerUID _x) != (getPlayerUID _joueur)) then 
				{
					private _invitJoueur = _x getVariable ["invitePar", []];

					private _newTeam = [];
					{
						if (_x != (getPlayerUID _joueur)) then 
						{
							_newTeam pushBack _x;
						};
					} forEach _invitJoueur;

					_x setVariable ["invitePar", _newTeam, true];
				};
			} forEach allPlayers;
		};

		//player setVariable ["inTeam", true, true];
		missionNamespace setVariable ["team", _teams, true];
	}
	else
	{
		_team = [(getPlayerUID _joueur), (getPlayerUID player)];
		_teams pushBack _team;

		//player setVariable ["inTeam", true, true];
		//_joueur setVariable ["inTeam", true, true];
		missionNamespace setVariable ["team", _teams, true];
	};

	{
		if (_x != (getPlayerUID _joueur)) then 
		{
			_invitePar_bis pushBack _x;
		};
	} forEach _invitePar;

	player setVariable ["invitePar", _invitePar_bis, true];

	{
		if (_x != (getPlayerUID _joueur)) then 
		{
			_inviteParJoueur_bis pushBack _x;
		};
	} forEach _inviteParJoueur;

	player setVariable ["invitePar", _inviteParJoueur_bis, true];
}; */


