
addMissionEventHandler ["HandleDisconnect", {
	params [ "_unit",  "_id",  "_uid",  "_name" ];

	private _inventaire_reel = getUnitLoadout _unit;

	// liste personnes kicker --> [ UID / UID / UID ]
	private _kicks = missionNamespace getVariable ["players_kicked", []];
	
	if (_uid in _kicks) then 
	{
		_kicks deleteAt (_kicks find _uid);
		
		missionNamespace setVariable ["players_kicked", _kicks, true];
	} 
	else 
	{
		// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, garage, vehicules player]
		private _variable = missionNamespace getVariable (format ["variable_%1", _uid]);

		private _inventaire_virtuel = _variable select 8;

		private _classes = [_variable select 0, _variable select 1];

		[_uid] call mission_fnc_quitter_team;

		/* private _team = [];
		private _teams = [];
		private _teams_bis = [];

		{
			private _tab = _x;
			private _ok = false;
			{
				if ((getPlayerUID _x) == _uid) then 
				{
					_ok = true;
				};
			} forEach _tab;

			if (_ok) then 
			{
				_team = _tab;
			}
			else
			{
				_teams_bis pushBack _tab;
			};
		} forEach (missionNamespace getVariable ["team", []]);

		{
			if ((getPlayerUID _x) != _uid) then 
			{
				_teams pushBack _x;
			};
		} forEach _team;

		if ((count _teams) > 1) then 
		{
			_teams_bis pushBack _teams;
		};
		
		missionNamespace setVariable ["team", _teams_bis, true];

		{
			if ((getPlayerUID _x) != _uid) then 
			{
				private _invitJoueur = _x getVariable ["invitePar", []];

				private _newTeam = [];
				{
					if (_x != _uid) then 
					{
						_newTeam pushBack _x;
					};
				} forEach _invitJoueur;

				_x setVariable ["invitePar", _newTeam, true];
			};
		} forEach allPlayers; */

		// UID player / name player / classes [classe, race] / exp / licences / level / vie / faim / soif / inv reel / inv virtuel / position player / liste quetes faites / planetes visités / quetes actives / garage / white liste soldat / documents
		[_uid, _name, _classes, (_variable select 2), (_variable select 3), (_variable select 4), (_variable select 5), (_variable select 6), (_variable select 7), _inventaire_reel, _inventaire_virtuel, (getPos _unit), (_variable select 10), (_variable select 12), (_variable select 13), (_variable select 14), (_variable select 15), (_variable select 16)] remoteExec ["db_fnc_sauvegardeBdd", 2];	
	};
	
	//false;		
}];