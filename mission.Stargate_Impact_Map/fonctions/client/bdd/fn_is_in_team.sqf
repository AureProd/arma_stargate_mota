
// fonction name : mission_fnc_is_in_team
// parmettres : [player uid]

private _playerUID = param [0, (getPlayerUID player)];

private _retour = [_playerUID] call mission_fnc_get_team;

private _return = false;

if ((count _retour) > 1) then {
	_return = true;
};

_return;