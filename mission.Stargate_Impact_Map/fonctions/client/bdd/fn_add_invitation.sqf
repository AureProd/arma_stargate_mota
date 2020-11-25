// fonction name : mission_fnc_add_invitation
// parmettres : [uid player distant]

private _player_distant_uid = param [0];
private _invitations = missionNamespace getVariable ["invitations", []];

private _index = _invitations findIf {
	(_x select 0) == (getPlayerUID player)
};

if (_index != -1) then {
	private _invitations_player = _invitations select _index;
	_invitations_player pushBack _player_distant_uid;

	_invitations set [_index, _invitations_player];

	missionNamespace setVariable ["invitations", _invitations, true];
};