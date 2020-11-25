// fonction name : mission_fnc_create_reset_invitations
// parmettres : []

private _invitations = missionNamespace getVariable ["invitations", []];

private _index = _invitations findIf {
	(_x select 0) == (getPlayerUID player)
};

private _invitations_player = [getPlayerUID player];

if (_index != -1) then {
	_invitations set [_index, _invitations_player];
} else {
	_invitations pushBack _invitations_player;
};

missionNamespace setVariable ["invitations", _invitations, true];