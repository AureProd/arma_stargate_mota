
// [player uid] call mission_fnc_quitter_team

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


