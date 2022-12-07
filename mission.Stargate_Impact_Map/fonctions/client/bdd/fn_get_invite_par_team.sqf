// fonction name : mission_fnc_get_invite_par_team
// parmettres : []

private _invitations = missionNamespace getVariable ["invitations", []];

private _return = [];

{
	if (((_x select 0) != (getPlayerUID player)) and ((getPlayerUID player) in _x)) then {
		_return pushBack (_x select 0);
	};
} forEach _invitations;

_return;
