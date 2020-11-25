// fonction name : mission_fnc_get_invitations_team
// parmettres : []

private _invitations = missionNamespace getVariable ["invitations", []];

private _index = _invitations findIf {
	(_x select 0) == (getPlayerUID player)
};

private _return = []; 

if (_index != -1) then {
	private _invitations_player = _invitations select _index;
	_invitations_player deleteAt 0;

	_return = _invitations_player;
};

_return;