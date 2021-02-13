// fonction name : mission_fnc_remove_invitation
// parmettres : [uid player qui invite, uid player à remove]

private _inviteur_player_uid = param[0];
private _remove_player_uid = param[1];

private _invitations = missionNamespace getVariable ["invitations", []]; // [[inviteur, invité, invité], [inviteur, invité, invité], [inviteur, invité, invité]]

private _index = _invitations findIf {
	(_x select 0) == _inviteur_player_uid
};

if (_index != -1) then {
	private _invitations_player = _invitations select _index;
	private _indexBis = _invitations_player find _remove_player_uid;

	if (_indexBis != -1) then {
		_invitations_player deleteAt _indexBis;

		_invitations set [_index, _invitations_player];

		missionNamespace setVariable ["invitations", _invitations, true];
	};
};